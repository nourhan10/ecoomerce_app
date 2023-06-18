import 'package:flutter/material.dart';

class AllCategoriesProvider with ChangeNotifier{
  static List<Category> englishNamesOfAllCategories =[
    Category(name: "Apple"),
    Category(name: "Smart Phones"),
    Category(name: "Tablets"),
    Category(name: "Accessories"),
    Category(name: "Games"),
    Category(name: "Electronics"),
    Category(name: "Security Systems")
  ];

  static List<Category> arabicNamesOfAllCategories = [
    Category(name: "أبل"),
    Category(name: "الهواتف الذكيية"),
    Category(name: "تابلت"),
    Category(name: "اكسسوارات"),
    Category(name: "العاب"),
    Category(name: "اليكترونيات"),
    Category(name: "الأنظمة الآمنة"),
  ];

}

class Category{
  String name;
  Category({required this.name});
}