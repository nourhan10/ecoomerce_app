import 'package:ecommerce_application/constants/constant_lists.dart';
import 'package:ecommerce_application/models/sub_category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AppleCategory extends StatelessWidget {
  var consts = ConstantLists();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
      ///height: 200,
      // padding: EdgeInsets.symmetric(vertical: height * 0.01),
      child: ListView(
        children: [
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(14), topRight: Radius.circular(14)),
              color: Colors.white,
            ),
            padding: EdgeInsets.all(height * 0.02),
            child: Text(
              AppLocalizations.of(context)!.apple,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SubCategoryModel(ConstantLists.pathesOfIPhoneSubCategoryImages,
              ConstantLists.namesOfIPhoneSubCategoryItems),
          SizedBox(
            height: height * 0.02,
          ),
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(14), topRight: Radius.circular(14)),
              color: Colors.white,
            ),
            padding: const EdgeInsets.all(10.0),
            child: Text(
              AppLocalizations.of(context)!.ipad,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SubCategoryModel(ConstantLists.pathesOfIPadSubCategoryImages,
              ConstantLists.namesOfIPadSubCategoryItems),
          SizedBox(
            height: height * 0.02,
          ),
          // Container(
          //   decoration: const BoxDecoration(
          //     borderRadius: BorderRadius.only(
          //         topLeft: Radius.circular(14), topRight: Radius.circular(14)),
          //     color: Colors.white,
          //   ),
          //   padding: const EdgeInsets.all(10.0),
          //   child: const Text(
          //     "IPad",
          //     style: TextStyle(
          //       fontSize: 20,
          //       fontWeight: FontWeight.bold,
          //     ),
          //   ),
          // ),
          // SubCategoryModel(
          //     pathesOfIPadSubCategoryImages, namesOfIPadSubCategoryItems),
          // const SizedBox(
          //   height: 20,
          // ),
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(14), topRight: Radius.circular(14)),
              color: Colors.white,
            ),
            padding: const EdgeInsets.all(10.0),
            child: Text(
              AppLocalizations.of(context)!.mac,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SubCategoryModel(ConstantLists.pathesOfMacSubCategoryImages,
              ConstantLists.namesOfMacSubCategoryItems),
        ],
      ),
    );
  }
}
