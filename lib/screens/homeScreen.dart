import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stylish_bottom_bar/model/bar_items.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController controller = PageController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(

        child: Column(
          children: [

            Container(
              height: height * .1,
              width: width,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: height * .6,
                      width: width * .7,
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey[200]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text(
                            "...ابحث هنا",
                            style: TextStyle(fontSize: 16),
                          ),
                          Icon(
                            Icons.search,
                            size: 30,
                            color: Colors.grey[700],
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      "assets/images/logo.png",
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: StylishBottomBar(
        items: [
          BottomBarItem(
            icon: const Icon(
              Icons.person_outline_rounded,
              size: 28,
            ),
            selectedIcon: const Icon(
              Icons.person,
              size: 28,
            ),
            selectedColor: Colors.red,
            unSelectedColor: Colors.black,
            title: const Text('الحساب'),
          ),
          BottomBarItem(
            icon: const Icon(Icons.shopping_cart_outlined,size: 28,),
            selectedIcon: const Icon(Icons.shopping_cart),
            selectedColor: Colors.red,
            unSelectedColor: Colors.black,
            // backgroundColor: Colors.orange,
            title: const Text('العربة'),
          ),
          BottomBarItem(
            icon: const Icon(Icons.star_border_rounded),
            selectedIcon: const Icon(Icons.star_rounded),
            selectedColor: Colors.red,
            unSelectedColor: Colors.black,
            title: const Text('الأقسام'),
          ),
          BottomBarItem(
            icon: const Icon(Icons.home_outlined),
            selectedIcon: const Icon(
              Icons.home,
              size: 35,
            ),
            selectedColor: Colors.red,
            unSelectedColor: Colors.black,
            title: const Text('Star'),
          ),
        ],
        option: AnimatedBarOptions(
          // iconSize: 32,
          barAnimation: BarAnimation.fade,
          iconStyle: IconStyle.animated,
          // opacity: 0.3,
        ),
      ),

      // Container(
      //   height: height * .1,
      //   color: Colors.white,
      //   padding: const EdgeInsets.all(20),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: [
      //       InkWell(
      //         child: Column(
      //           children: const [
      //             Icon(
      //               Icons.person_outline_rounded,
      //               size: 35,
      //             ),
      //           ],
      //         ),
      //       ),
      //       InkWell(
      //         child: Column(
      //           children: const [
      //             Icon(
      //               Icons.shopping_cart_outlined,
      //               size: 35,
      //               color: Colors.black,
      //             ),
      //           ],
      //         ),
      //       ),
      //       InkWell(
      //         child: Column(
      //           children: const [
      //             Icon(
      //               Icons.square,
      //               size: 35,
      //             )
      //           ],
      //         ),
      //       ),
      //       InkWell(
      //         child: Column(
      //           children: const [
      //             Icon(
      //               Icons.home,
      //               size: 35,
      //             )
      //           ],
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
