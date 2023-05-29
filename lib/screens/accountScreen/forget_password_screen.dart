import 'package:ecommerce_application/models/custom_elevated_button_model.dart';
import 'package:ecommerce_application/models/custom_text_field_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../providers/language_settings_provider.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);
  static final routeName = "forget password screen";

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
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
              ? (EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.18))
              : (EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.25)),
          child: Text(
            AppLocalizations.of(context)!.forget,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.04,
            vertical: MediaQuery.of(context).size.height * 0.045),
        child: ListView(
          children: [
            CustomTextFieldModel(AppLocalizations.of(context)!.email,
                AppLocalizations.of(context)!.enter_email_here),
            SizedBox(
              height: languageProvider.currentLocale == "en"
                  ? MediaQuery.of(context).size.height * 0.015
                  : MediaQuery.of(context).size.height * 0.02,
            ),
            CustomElevatedButtonModel(
                AppLocalizations.of(context)!.forget, Colors.red),
          ],
        ),
      ),
    );

    //   Container(
    //   color: Colors.grey,
    //  child: Column(
    //    children: [
    //      Container(
    //        height: height * 0.08,
    //        width: width,
    //        color: Colors.white,
    //        child: Text("Forget Password", style: TextStyle(fontSize: 16),),
    //      ),
    //    ],
    //  ),
    //   // backgroundColor: Colors.purple,
    // );
  }
}
