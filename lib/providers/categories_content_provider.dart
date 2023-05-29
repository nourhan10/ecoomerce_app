import 'package:flutter/material.dart';

import '../screens/categoriesScreen/categories/accessories_category.dart';
import '../screens/categoriesScreen/categories/apple_category.dart';
import '../screens/categoriesScreen/categories/electronics_category.dart';
import '../screens/categoriesScreen/categories/games_category.dart';
import '../screens/categoriesScreen/categories/security_systems_category.dart';
import '../screens/categoriesScreen/categories/smart_phones_category.dart';
import '../screens/categoriesScreen/categories/tablets_category.dart';

class CategoriesContentProvider with ChangeNotifier{
  List<Widget> categoriesContent =[
    AppleCategory(),
    SmartPhonesCategory(),
    TabletsCategory(),
    AccessoriesCategory(),
    GamesCategory(),
    ElectronicsCategory(),
    SecuritySystemsCategory()
  ];
}