import 'package:ecommerce_application/screens/accountScreen/account_screen.dart';
import 'package:ecommerce_application/screens/cartScreen/cart_screen.dart';
import 'package:ecommerce_application/screens/homeScreenContent/home_screen_content.dart';
import 'package:flutter/material.dart';
import 'categoriesScreen/categories_screen.dart';

class BottomNavigationBarDesign extends StatefulWidget {
  String title;

  BottomNavigationBarDesign({required this.title});

  @override
  _BottomNavigationBarDesignState createState() =>
      _BottomNavigationBarDesignState();
}

class _BottomNavigationBarDesignState extends State<BottomNavigationBarDesign> {
  int bottomSelectedIndex = 0;

  List<BottomNavigationBarItem> buildBottomNavBarItems() {
    return [
      const BottomNavigationBarItem(
        icon: Icon(
          Icons.home,
          size: 28,
        ),
        label: 'Home',
      ),
      const BottomNavigationBarItem(
        icon: Icon(
          Icons.category,
          size: 28,
        ),
        label: 'Categories',
      ),
      const BottomNavigationBarItem(
        icon: Icon(
          Icons.shopping_cart,
          size: 28,
        ),
        label: 'Cart',
      ),
      const BottomNavigationBarItem(
        icon: Icon(
          Icons.person_outline_rounded,
          size: 28,
        ),
        label: 'Account',
      ),
    ];
  }

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
        HomeScreenContent(),
        CategoriesScreen(),
        CartScreen(),
        AccountScreen()
      ],
    );
  }

  @override
  void initState() {
    super.initState();
  }

  void bottomTapped(int index) {
    setState(() {
      bottomSelectedIndex = index;
      pageController.animateToPage(index,
          curve: Curves.ease, duration: Duration(milliseconds: 10));
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: buildPageView(),
      bottomNavigationBar: SizedBox(
        height: height * 0.1,
        child: BottomNavigationBar(
          showSelectedLabels: true,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey[500],
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          currentIndex: bottomSelectedIndex,
          onTap: (index) {
            bottomTapped(index);
          },
          items: buildBottomNavBarItems(),
        ),
      ),
    );
  }
}
