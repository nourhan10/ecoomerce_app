import 'package:ecommerce_application/screens/categories_screen.dart';
import 'package:ecommerce_application/screens/home.dart';
import 'package:ecommerce_application/screens/homeScreen.dart';
import 'package:ecommerce_application/screens/test.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:
        Test(title: "Flutter Demo"),
        // Home(),
      // const MyHomePage(title: 'Flutter Demo Home Page'),
      //  CategoriesScreen(),
      // categoryData == null ?
      // CategoriesScreen(onCategorySelected): MyHomePage(title: "Flutter Demo");
    );
  }
}

// CategoryData? categoryData = null;
// void onCategorySelected(categorySelected){
//   categoryData = categorySelected;
// }

