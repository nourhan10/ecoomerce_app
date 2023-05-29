import 'package:ecommerce_application/models/sub_category_model_for_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BestSellerSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    List<String> bestSellerImages = [
      "assets/images/iphone.png",
      "assets/images/ipad.png",
      "assets/images/tablet.png",
      "assets/images/laptop.png"
    ];
    List<String> bestSellerItems = ["IPhone", "IPad", "Tablets", "Laptops"];
    String title = "Best Seller";
    return Column(
      children: [
        SubCategoryModelForHomeScreen(bestSellerImages, bestSellerItems, title),
        Row(
          children: [
            Container(
              width: width,
              color: Colors.white,
              alignment: Alignment.centerRight,
              padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 12.0),
              child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFF575656),
                      borderRadius: BorderRadius.circular(12)),
                  margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.06,
                      vertical: MediaQuery.of(context).size.height * 0.03),
                  padding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * 0.015,
                      horizontal: MediaQuery.of(context).size.width * 0.06),
                  child: Text(
                    AppLocalizations.of(context)!.see_more,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  )),
            )
          ],
        ),
      ],
    );
  }
}
