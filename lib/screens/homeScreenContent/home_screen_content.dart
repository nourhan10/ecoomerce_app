import 'package:flutter/material.dart';
import 'homeScreenContentSections/best_Seller_section.dart';
import 'homeScreenContentSections/daily_offers_section.dart';
import 'homeScreenContentSections/exclusive_offers.dart';
import 'homeScreenContentSections/home_content_appBar.dart';
import 'homeScreenContentSections/offers_section.dart';
import 'homeScreenContentSections/sales_section.dart';

class HomeScreenContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: SafeArea(
          child: ListView(
            children: [
              HomeContentAppBar(),
              OffersSection(),
              ExclusiveOffers(),
              SalesSection(),
              BestSellerSection(),
              DailyOffersSection(),
              SalesSection(),
              BestSellerSection(),
            ],
          ),
        ));
  }
}
