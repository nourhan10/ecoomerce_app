import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../constants/daily_offers_products.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../providers/language_settings_provider.dart';

class DailyOfferModel extends StatelessWidget {
  List<DailyOffersProducts> dailyOffersItems;

  DailyOfferModel(this.dailyOffersItems);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    LanguageSettingsProvider languageProvider = Provider.of(context);
    final dailyOfferWidth = width * 0.5;
    final dailyOfferHeight = languageProvider.currentLocale == "en"? height * 0.66: height * 0.65;



    return Column(children: [
      SizedBox(
        height: dailyOfferHeight,
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: DailyOffersProducts.dailyOffers.length,
            itemBuilder: (context, index) {
              return Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.02,
                      vertical: MediaQuery.of(context).size.height * 0.04),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16)),
                        child: Container(
                            width: dailyOfferWidth,
                            height: height * 0.23,
                            padding: EdgeInsets.symmetric(
                                horizontal:
                                    MediaQuery.of(context).size.height * 0.04,
                                vertical:
                                    MediaQuery.of(context).size.width * 0.01),
                            color: Colors.white,
                            child: Stack(
                              children: [
                                Image.asset(
                                  DailyOffersProducts
                                      .dailyOffers[index].productImagePath,
                                  fit: BoxFit.fill,
                                ),
                                Align(
                                  alignment: AlignmentDirectional.topEnd,
                                  child: Icon(Icons.favorite_border),
                                )
                              ],
                            )),
                      ),
                      Container(
                        width: dailyOfferWidth,
                        height: height * 0.05,
                        color: Colors.white,
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * 0.03,
                            vertical:
                                MediaQuery.of(context).size.height * 0.01),
                        child: Text(
                          DailyOffersProducts.dailyOffers[index].productName,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Container(
                        width: dailyOfferWidth,
                        height: height * 0.12,
                        color: Colors.white,
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * 0.03,
                            vertical:
                                MediaQuery.of(context).size.height * 0.01),
                        child: Text(
                          DailyOffersProducts
                              .dailyOffers[index].productDescription,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.black87,
                            height: 1.5,
                          ),
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Container(
                        width: dailyOfferWidth,
                        color: Colors.white,
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * 0.03,
                            vertical:
                                MediaQuery.of(context).size.height * 0.01),
                        child: Text(
                          "EGP ${DailyOffersProducts.dailyOffers[index].productPriceBeforeDiscount}",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ),
                      Container(
                        width: dailyOfferWidth,
                        color: Colors.white,
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * 0.03),
                        child: Text(
                          "EGP ${DailyOffersProducts.dailyOffers[index].productPriceAfterDiscount}",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(16),
                            bottomRight: Radius.circular(16)),
                        child: Container(
                            width: dailyOfferWidth,
                            height: height * 0.1,
                            color: Colors.white,
                            padding: EdgeInsets.symmetric(
                                horizontal:
                                    MediaQuery.of(context).size.height * 0.04,
                                vertical: languageProvider.currentLocale == "en"
                                    ? MediaQuery.of(context).size.width * 0.03
                                    : MediaQuery.of(context).size.width *
                                        0.02),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFF575656),
                                ),
                                onPressed: () {},
                                child: Text(
                                  AppLocalizations.of(context)!.add_to_cart,
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )),
                      ),
                    ],
                  ));
            }),
      )
    ]);
  }
}
