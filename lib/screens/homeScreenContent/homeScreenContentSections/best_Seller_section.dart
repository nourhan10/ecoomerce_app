import 'package:ecommerce_application/models/sub_category_model_for_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../providers/language_settings_provider.dart';

class BestSellerSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    LanguageSettingsProvider languageProvider = Provider.of(context);
    List<String> bestSellerImages = [
      "assets/images/iphone.png",
      "assets/images/ipad.png",
      "assets/images/tablet.png",
      "assets/images/laptop.png"
    ];
    List<String> bestSellerItems = [
      AppLocalizations.of(context)!.iphone,
      AppLocalizations.of(context)!.ipad,
      AppLocalizations.of(context)!.tablets,
      AppLocalizations.of(context)!.laptops
    ];
    String title = AppLocalizations.of(context)!.best_seller;
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
                  margin: EdgeInsets.symmetric(horizontal: width * 0.06, vertical: height * 0.03),
                  padding: EdgeInsets.symmetric(
                      vertical: languageProvider.currentLocale == "en" ? height * 0.015 : height * 0.01,
                      horizontal: width * 0.06),
                  child: Text(
                    AppLocalizations.of(context)!.see_more,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: languageProvider.currentLocale == "en" ? 16 : 14,
                        fontWeight: FontWeight.bold),
                  )),
            )
          ],
        ),
      ],
    );
  }
}
