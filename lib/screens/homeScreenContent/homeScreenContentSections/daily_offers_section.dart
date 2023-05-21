import 'package:ecommerce_application/models/daily_offer_model.dart';
import 'package:flutter/material.dart';

import '../../../constants/daily_offers_products.dart';

class DailyOffersSection extends StatelessWidget {
  const DailyOffersSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: height * 0.66,
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.02),
      // color: Colors.yellow,
      child: Column(
        children: [
          DailyOfferModel(DailyOffersProducts.dailyOffers),
        ],
      ),
    );
  }
}
