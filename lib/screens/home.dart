import 'package:ecommerce_application/screens/appBarModel.dart';
import 'package:ecommerce_application/screens/categories_screen.dart';
import 'package:ecommerce_application/screens/fav_screen.dart';
import 'package:flutter/material.dart';
import 'package:stylish_bottom_bar/model/bar_items.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

import 'account_screen.dart';
import 'cart_screen.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int bottomSelectedIndex = 0;

  // PageController controller = PageController();
  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  void pageChanged(int index) {
    setState(() {
      bottomSelectedIndex = index;
    });
  }

  Widget buildPageView() {
    return PageView(
      controller: pageController,
      onPageChanged: (index) {
        pageChanged(index);
      },
      children: <Widget>[
        CategoriesScreen(),
        CartScreen(),
        FavScreen(),
        AccountScreen()
      ],
    );
  }

  void bottomTapped(int index) {
    setState(() {
      bottomSelectedIndex = index;
      pageController.animateToPage(index,
          duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

  List<BottomBarItem> buildBottomNavBarItems() {
    return [
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
        icon: const Icon(
          Icons.shopping_cart_outlined,
          size: 28,
        ),
        selectedIcon: const Icon(Icons.shopping_cart),
        selectedColor: Colors.red,
        unSelectedColor: Colors.black,
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
    ];
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(
        children: [
          AppBarModel(),
          buildPageView(),
        ],
      ),
      bottomNavigationBar: StylishBottomBar(
        currentIndex: bottomSelectedIndex,
        onTap: (index) {
          bottomTapped(index);
        },
        items: buildBottomNavBarItems(),
        option: AnimatedBarOptions(
          barAnimation: BarAnimation.fade,
          iconStyle: IconStyle.animated,
          // opacity: 0.3,
        ),
      ),
    );
  }
}
