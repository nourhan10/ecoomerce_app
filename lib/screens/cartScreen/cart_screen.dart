// import 'package:ecommerce_application/models/custom_elevated_button_model.dart';
import 'package:ecommerce_application/screens/cartScreen/cart_contains_product.dart';
import 'package:ecommerce_application/screens/cartScreen/cart_empty.dart';
// import 'package:ecommerce_application/screens/homeScreenContent/home_screen_content.dart';
import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import '../../providers/language_settings_provider.dart';

class CartScreen extends StatelessWidget {
  int cartItems = 0;
  List<String> cartProducts = [];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    // LanguageSettingsProvider languageProvider = Provider.of(context);
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: height * 0.08,
        title: Center(
          child: Text(
            AppLocalizations.of(context)!.cart,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
      ),
      // Container(
      // margin: languageProvider.currentLocale == "en"
      // ? (EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.4))
      //     : (EdgeInsets.only(
      // right: MediaQuery.of(context).size.width * 0.25)),
      // child:
      body: Container(
        padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.04,
            right: MediaQuery.of(context).size.width * 0.04,
            top: MediaQuery.of(context).size.height * 0.045,
            bottom: MediaQuery.of(context).size.height * 0.025),
        // color: Colors.red,
        child: ListView(
          children: [
            cartItems == 0 ? CartEmpty() : CartContainsProducts(),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.2),
              child: InkWell(
                onTap: () {
                  // Navigator.pushNamed(context, HomeScreenContent.routeName);
                },
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0)),
                      backgroundColor: Colors.red,
                      // fixedSize: Size(width, height * 0.08),
                      fixedSize: Size(width, height * 0.06),
                    ),
                    onPressed: () {},
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        AppLocalizations.of(context)!.continue_shipping,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
