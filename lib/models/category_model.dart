import 'package:flutter/material.dart';

class CategoryModel  extends StatelessWidget {
  String subCategoryName;
  String subCategoryImagePath;

  CategoryModel(this.subCategoryName, this.subCategoryImagePath);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.red, Colors.orange, Colors.yellow]
            ),
          ),
          child: Image.asset(subCategoryImagePath),
        ),
        Text(subCategoryName, style: TextStyle(fontSize: 30),),
      ],
    );
  }

}

