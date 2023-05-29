import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/language_settings_provider.dart';

class SignInButtonModel extends StatelessWidget {
  String buttonText;
  Color buttonColor;
  IconData buttonIcon;

  SignInButtonModel(this.buttonText, this.buttonColor, this.buttonIcon);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    LanguageSettingsProvider languageProvider = Provider.of(context);

    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
          backgroundColor: buttonColor,
          fixedSize: Size(
              width,
              languageProvider.currentLocale == "en"
                  ? height * 0.08
                  : height * 0.075),
        ),
        onPressed: () {},
        child: Row(
          children: [
            Icon(buttonIcon),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                buttonText,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: languageProvider.currentLocale == "en" ? 18 : 15,
                ),
              ),
            )
          ],
        ));
  }
}
