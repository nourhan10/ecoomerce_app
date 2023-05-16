import 'package:ecommerce_application/models/category_model.dart';
import 'package:flutter/material.dart';

class SubCategoryModel extends StatelessWidget {
  String subCategorytitle;
  List<CategoryModel> subCategoryList;

  SubCategoryModel(this.subCategorytitle, this.subCategoryList);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Text("Large Section"),
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(10.0),
            child: GridView.builder(
                itemCount: subCategoryList.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (context, index) {
                  return Column(
                      children: [
                        Image.asset(""),
                        Text(""),
                      ]
                  );
                }
            ),)
        ]);
  }

}
