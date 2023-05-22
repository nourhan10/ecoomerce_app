import 'package:ecommerce_application/screens/categoriesScreen/categories/apple_category.dart';
import 'package:flutter/material.dart';

import 'categories/smart_phones_category.dart';

class SideBarNavigationForCategoriesScreen extends StatefulWidget {
  @override
  _SideBarNavigationForCategoriesScreenState createState() =>
      _SideBarNavigationForCategoriesScreenState();
}

class _SideBarNavigationForCategoriesScreenState
    extends State<SideBarNavigationForCategoriesScreen> {
  int bottomSelectedIndex = 0;

  List<Text> buildSideBarNavigationItems() {
    return [
      Text(
        "Apple",
        style: TextStyle(
          fontSize: 12,
        ),
      ),
      Text(
        "Smart Phones",
        style: TextStyle(
          fontSize: 12,
        ),
      ),
      Text(
        "Tablets",
        style: TextStyle(
          fontSize: 12,
        ),
      ),
      Text(
        "Accessories",
        style: TextStyle(
          fontSize: 12,
        ),
      ),
      Text(
        "Games",
        style: TextStyle(
          fontSize: 12,
        ),
      ),
      Text(
        "Electronics",
        style: TextStyle(
          fontSize: 12,
        ),
      ),
      Text(
        "Security Systems",
        style: TextStyle(
          fontSize: 12,
        ),
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
        AppleCategory(),
        SmartPhonesCategory(),
        AppleCategory(),
        SmartPhonesCategory(),
        AppleCategory(),
        SmartPhonesCategory(),
        AppleCategory(),
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
      ),
    );
  }
}
