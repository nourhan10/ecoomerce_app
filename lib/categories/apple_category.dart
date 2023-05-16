import 'package:ecommerce_application/models/subCategory.dart';
import 'package:ecommerce_application/models/subcategory_model.dart';
import 'package:flutter/material.dart';

import '../models/category_model.dart';

class AppleCategory extends StatelessWidget {
  // List<CategoryModel> iphone = [
  //   CategoryModel("Iphone 14", "assets/images/iphone.jpg"),
  //   CategoryModel("Iphone 14", "assets/images/iphone.jpg"),
  //   CategoryModel("Iphone 14", "assets/images/iphone.jpg"),
  //   CategoryModel("Iphone 14", "assets/images/iphone.jpg"),
  // ];
  List<String> namesOfIPhoneSubCategoryItems = [
    "airpods ",
    "Anker Soundcore",
    "HDMI Cable",
    "iphone 12"
    // "airpods 2nd Generation",
    // "Anker Soundcore Wakey",
    // "Apple HDMI to HDMI Cable(1.8m)",
    // "iphone 12 pro Max"
  ];
  List<String> pathesOfIPhoneSubCategoryImages = [
    "assets/images/airpods.png",
    "assets/images/soundcore.png",
    "assets/images/hdmiCable.jpg",
    "assets/images/iphone12.jpg"
  ];

  List<String> namesOfIPadSubCategoryItems = [
    "ipad mini Wi-Fi",
    "ipad pro 11-inch",
    "ipad Air 256GB",
    "ipad pro 12.9-inch",
    "ipad mini Wi-Fi",
    "ipad pro 11-inch",
    "ipad pro 12.9-inch"
  ];
  List<String> pathesOfIPadSubCategoryImages = [
    "assets/images/ipad_mini_Wi-Fi.png",
    "assets/images/ipad_pro_11-inch_Wi-Fi.png",
    "assets/images/ipad_Air_256GB_Wi-Fi.png",
    "assets/images/ipad_pro_12.9-inch_Wi-Fi.png",
    "assets/images/ipad_mini_Wi-Fi.png",
    "assets/images/ipad_pro_11-inch_Wi-Fi.png",
    "assets/images/ipad_pro_12.9-inch_Wi-Fi.png",
  ];
  List<String> namesOfMacSubCategoryItems = [
    "Mac Mini",
    "Mac Pro",
    "Macbook Air M1",
    "Mac Pro 13Inch",
    "Mac Pro 14Inch",
  ];
  List<String> pathesOfMacSubCategoryImages = [
    "assets/images/mac_mini.jpg",
    "assets/images/mac_pro.jpg",
    "assets/images/macbook_air_m1.jpg",
    "assets/images/macbook_pro_13inch.jpg",
    "assets/images/macbook_pro_14inch.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      // color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(14), topRight: Radius.circular(14)),
              color: Colors.white,
            ),
            padding: EdgeInsets.all(10.0),
            child: Text(
              "IPhone",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              // textDirection: TextDirection.ltr,
            ),
          ),
          SubCategory(
              pathesOfIPhoneSubCategoryImages, namesOfIPhoneSubCategoryItems),
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(14), topRight: Radius.circular(14)),
              color: Colors.white,
            ),
            padding: EdgeInsets.all(10.0),
            child: Text(
              "IPad",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              // textDirection: TextDirection.ltr,
            ),
          ),
          SubCategory(
              pathesOfIPadSubCategoryImages, namesOfIPadSubCategoryItems),
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(14), topRight: Radius.circular(14)),
              color: Colors.white,
            ),
            padding: EdgeInsets.all(10.0),
            child: Text(
              "IPad",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              // textDirection: TextDirection.ltr,
            ),
          ),
          SubCategory(
              pathesOfIPadSubCategoryImages, namesOfIPadSubCategoryItems),
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(14), topRight: Radius.circular(14)),
              color: Colors.white,
            ),
            padding: EdgeInsets.all(10.0),
            child: Text(
              "Mac",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              // textDirection: TextDirection.ltr,
            ),
          ),
          SubCategory(
              pathesOfMacSubCategoryImages, namesOfMacSubCategoryItems),
        ],
      ),
    );
  }
}
