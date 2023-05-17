import 'package:ecommerce_application/screens/account_screen.dart';
import 'package:ecommerce_application/screens/cart_screen.dart';
import 'package:ecommerce_application/screens/home_content_screen.dart';
import 'package:flutter/material.dart';

import 'categories_screen.dart';

class Test extends StatefulWidget {
  // MyHomePage({Key key, this.title}) : super(key: key);

  String title;

  Test({required this.title});

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
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

  Widget buildPageView() {
    return PageView(
      controller: pageController,
      onPageChanged: (index) {
        pageChanged(index);
      },
      children: <Widget>[HomeContentScreen(), CategoriesScreen(), CartScreen(), AccountScreen()],
    );
  }

  @override
  void initState() {
    super.initState();
  }

  void pageChanged(int index) {
    setState(() {
      bottomSelectedIndex = index;
    });
  }

  void bottomTapped(int index) {
    setState(() {
      bottomSelectedIndex = index;
      pageController.animateToPage(index,
          duration: Duration(milliseconds: 200), curve: Curves.ease);
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
