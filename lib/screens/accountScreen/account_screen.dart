import 'package:ecommerce_application/screens/accountScreen/change_language_screen.dart';
import 'package:ecommerce_application/screens/accountScreen/sign_in_screen.dart';
import 'package:ecommerce_application/screens/accountScreen/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../providers/language_settings_provider.dart';

class AccountScreen extends StatelessWidget {
  static final String routeName = "account screen";

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    LanguageSettingsProvider languageProvider = Provider.of(context);
    return Container(
      color: Color(0xffbebaba),
      child: Center(
          child: Container(
        height: languageProvider.currentLocale == "en"
            ? height * 0.45
            : height * 0.47,
        width: width * 0.55,
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.04,
            vertical: MediaQuery.of(context).size.height * 0.04),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
          // color: Colors.red,
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.01),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppLocalizations.of(context)!.if_have_account,
                style: TextStyle(
                    fontSize: languageProvider.currentLocale == "en" ? 15 : 13),
              ),
              SizedBox(
                height: languageProvider.currentLocale == "en"
                    ? MediaQuery.of(context).size.height * 0.02
                    : MediaQuery.of(context).size.height * 0.015,
              ),
              Container(
                width: width,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, SignInScreen.routeName);
                  },
                  child: Text(AppLocalizations.of(context)!.sign_in),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                        vertical: languageProvider.currentLocale == "en"
                            ? MediaQuery.of(context).size.height * 0.03
                            : MediaQuery.of(context).size.height * 0.02),
                    backgroundColor: Colors.red,
                  ),
                ),
              ),
              SizedBox(
                height: languageProvider.currentLocale == "en"
                    ? MediaQuery.of(context).size.height * 0.03
                    : MediaQuery.of(context).size.height * 0.025,
              ),
              Text(
                AppLocalizations.of(context)!.or,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: languageProvider.currentLocale == "en" ? 18 : 15),
              ),
              SizedBox(
                height: languageProvider.currentLocale == "en"
                    ? MediaQuery.of(context).size.height * 0.03
                    : MediaQuery.of(context).size.height * 0.025,
              ),
              Container(
                  width: width,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, SignUpScreen.routeName);
                    },
                    child: Text(AppLocalizations.of(context)!.sign_up),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          vertical: languageProvider.currentLocale == "en"
                              ? MediaQuery.of(context).size.height * 0.03
                              : MediaQuery.of(context).size.height * 0.02),
                      backgroundColor: Color(0xFF575656),
                    ),
                  )),
              SizedBox(
                height: languageProvider.currentLocale == "en"
                    ? MediaQuery.of(context).size.height * 0.04
                    : MediaQuery.of(context).size.height * 0.03,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, ChangeLanguageScreen.routeName);
                },
                child: Text(
                  AppLocalizations.of(context)!.change_lang,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15
                      // languageProvider.currentLocale == "en" ? 15 : 13
                      ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
