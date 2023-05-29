import 'package:flutter/material.dart';

class AllCategoriesProvider with ChangeNotifier{
  static List<Category> namesOfAllCategories =[
    Category(name: "Apple"),
    Category(name: "Smart Phones"),
    Category(name: "Tablets"),
    Category(name: "Accessories"),
    Category(name: "Games"),
    Category(name: "Electronics"),
    Category(name: "Security Systems")
  ];
}

class Category{
  String name;
  Category({required this.name});
}