import 'package:ecommerce_application/models/custom_elevated_button_model.dart';
import 'package:ecommerce_application/models/custom_text_field_model.dart';
import 'package:ecommerce_application/screens/accountScreen/forget_password_screen.dart';
import 'package:ecommerce_application/models/sign_in_button_model.dart';
import 'package:ecommerce_application/screens/accountScreen/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../providers/language_settings_provider.dart';

class SignInScreen extends StatelessWidget {
  static final String routeName = "sign in screen";

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    LanguageSettingsProvider languageProvider = Provider.of(context);
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: height * 0.08,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context, true);
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Color(0xFF575656),
            )),
        title: Container(
          // color: Colors.red,
          margin: languageProvider.currentLocale == "en"
              ? (EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.3))
              : (EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.25)),
          child: Text(
            AppLocalizations.of(context)!.sign_in,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
      ),
      body: ListView(
          children: [
        Container(
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.04,
              vertical: MediaQuery.of(context).size.height * 0.045),
          child: Form(
            child: Column(
              children: [
                CustomTextFieldModel(AppLocalizations.of(context)!.email,
                    AppLocalizations.of(context)!.enter_email_here),
                CustomTextFieldModel(AppLocalizations.of(context)!.password,
                    AppLocalizations.of(context)!.enter_pass_here),
                Container(
                  width: width,
                  child: InkWell(
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    onTap: () {
                      Navigator.pushNamed(
                          context, ForgetPasswordScreen.routeName);
                    },
                    child: Text(
                      AppLocalizations.of(context)!.forget_pass,
                      textAlign: languageProvider.currentLocale == "en"
                          ? TextAlign.right
                          : TextAlign.left,
                      style: TextStyle(
                        fontSize:
                            languageProvider.currentLocale == "en" ? 15 : 14,
                        color: Color(0xFF3E3E3E),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                    height: languageProvider.currentLocale == "en"
                        ? MediaQuery.of(context).size.height * 0.03
                        : MediaQuery.of(context).size.height * 0.02),
                CustomElevatedButtonModel(
                    AppLocalizations.of(context)!.sign_in, Colors.green),
                SizedBox(
                    height: languageProvider.currentLocale == "en"
                        ? MediaQuery.of(context).size.height * 0.03
                        : MediaQuery.of(context).size.height * 0.02),
                Row(
                  textDirection: languageProvider.currentLocale == "en"
                      ? TextDirection.ltr
                      : TextDirection.rtl,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        "${AppLocalizations.of(context)!.do_not_have_an_account}    "),
                    InkWell(
                      hoverColor: Colors.transparent,
                      onTap: () {
                        Navigator.pushNamed(context, SignUpScreen.routeName);
                      },
                      child: Text(
                        AppLocalizations.of(context)!.sign_up,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                SizedBox(
                    height: languageProvider.currentLocale == "en"
                        ? MediaQuery.of(context).size.height * 0.03
                        : MediaQuery.of(context).size.height * 0.02),
                SignInButtonModel(
                  "   ${AppLocalizations.of(context)!.sign_in_with_apple}",
                  Colors.black,
                  Icons.apple,
                ),
                SizedBox(
                    height: languageProvider.currentLocale == "en"
                        ? MediaQuery.of(context).size.height * 0.03
                        : MediaQuery.of(context).size.height * 0.025),
                SignInButtonModel(
                  "   ${AppLocalizations.of(context)!.sign_in_with_google}",
                  Colors.red,
                  Icons.security,
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
