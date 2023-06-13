import 'package:ecommerce_application/screens/accountScreen/account_screen.dart';
import 'package:ecommerce_application/screens/cartScreen/cart_screen.dart';
import 'package:ecommerce_application/screens/homeScreenContent/home_screen_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'categoriesScreen/categories_screen.dart';
import 'package:provider/provider.dart';
import '../../providers/language_settings_provider.dart';

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
      BottomNavigationBarItem(
        icon: const Icon(
          Icons.home,
          size: 28,
        ),
        label: AppLocalizations.of(context)!.home,
      ),
      BottomNavigationBarItem(
        icon: const Icon(
          Icons.category,
          size: 28,
        ),
        label: AppLocalizations.of(context)!.categories,
      ),
      BottomNavigationBarItem(
        icon: const Icon(
          Icons.shopping_cart,
          size: 28,
        ),
        label: AppLocalizations.of(context)!.cart,
      ),
      BottomNavigationBarItem(
        icon: const Icon(
          Icons.person,
          size: 28,
        ),
        label: AppLocalizations.of(context)!.account,
      ),
    ];
  }

  PageController pageController = PageController(
    initialPage: 1,
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
          curve: Curves.ease, duration: const Duration(milliseconds: 10));
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    LanguageSettingsProvider languageProvider = Provider.of(context);

    return Scaffold(
      body: buildPageView(),
      bottomNavigationBar: SizedBox(
        height: languageProvider.currentLocale == "en"
            ? height * 0.1
            : height * 0.112,
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
