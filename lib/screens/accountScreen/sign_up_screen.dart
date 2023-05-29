import 'package:ecommerce_application/models/custom_text_field_model.dart';
import 'package:ecommerce_application/screens/accountScreen/sign_in_screen.dart';
import 'package:flutter/material.dart';
import '../../models/custom_elevated_button_model.dart';
import '../../models/sign_in_button_model.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../providers/language_settings_provider.dart';

class SignUpScreen extends StatelessWidget {
  static final routeName = "sign up screen";

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    LanguageSettingsProvider languageProvider = Provider.of(context);

    return Scaffold(
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
          margin: languageProvider.currentLocale == "en"
              ? (EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.3))
              : (EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.23)),
          child: Text(
            AppLocalizations.of(context)!.sign_up,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
      ),
      body: Container(
        color: Colors.grey[200],
        child: Container(
          height: height * 3.0,
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.04,
              vertical: MediaQuery.of(context).size.height * 0.045),
          child: ListView(
            shrinkWrap: true,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              SignInButtonModel(
                "   ${AppLocalizations.of(context)!.sign_in_with_apple}",
                Colors.black,
                Icons.apple,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              SignInButtonModel(
                "   ${AppLocalizations.of(context)!.sign_in_with_google}",
                Colors.red,
                Icons.security,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.06),
              Divider(
                  height: MediaQuery.of(context).size.height * 0.002,
                  color: Colors.grey[400]),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              CustomTextFieldModel(AppLocalizations.of(context)!.first_name,
                  AppLocalizations.of(context)!.enter_first_name_here),
              CustomTextFieldModel(AppLocalizations.of(context)!.last_name,
                  AppLocalizations.of(context)!.enter_last_name_here),
              CustomTextFieldModel(AppLocalizations.of(context)!.email,
                  AppLocalizations.of(context)!.enter_email_here),
              CustomTextFieldModel(AppLocalizations.of(context)!.phone,
                  AppLocalizations.of(context)!.enter_phone_here),
              CustomTextFieldModel(AppLocalizations.of(context)!.password,
                  AppLocalizations.of(context)!.enter_pass_here),
              SizedBox(
                  height: languageProvider.currentLocale == "en"
                      ? (MediaQuery.of(context).size.height * 0.01)
                      : (MediaQuery.of(context).size.height * 0.02)),
              CustomElevatedButtonModel(
                  AppLocalizations.of(context)!.sign_up, Colors.green),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      "${AppLocalizations.of(context)!.do_not_have_an_account}    "),
                  InkWell(
                    hoverColor: Colors.transparent,
                    onTap: () {
                      Navigator.pushNamed(context, SignInScreen.routeName);
                    },
                    child: Text(
                      AppLocalizations.of(context)!.sign_in,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            ],
          ),
        ),
      ),
    );
  }
}
