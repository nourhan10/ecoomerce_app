import 'package:ecommerce_application/models/daily_offer_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../constants/daily_offers_products.dart';

class DailyOffersSection extends StatelessWidget {
  const DailyOffersSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: height * 0.74,
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.02),
      // color: Colors.yellow,
      child: Column(
        children: [
          Container(
              width: width,
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.03,
                left: MediaQuery.of(context).size.height * 0.02,
                right: MediaQuery.of(context).size.height * 0.02,
              ),
              child: Text(
                AppLocalizations.of(context)!.daily_offers,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              )),
          DailyOfferModel(DailyOffersProducts.dailyOffers),
        ],
      ),
    );
  }
}
