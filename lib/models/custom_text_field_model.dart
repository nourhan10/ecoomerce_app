import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import '../providers/language_settings_provider.dart';

class CustomTextFieldModel extends StatelessWidget {
  final String textFieldLabel;
  final String textFieldHint;

  CustomTextFieldModel(this.textFieldLabel, this.textFieldHint);

  String _errorMessage(String str) {
    switch (textFieldHint) {
      case 'Enter Email Here':
        return 'Email is Empty';
      case 'Enter Password Here':
        return 'Password is Empty';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    LanguageSettingsProvider languageProvider = Provider.of(context);
    return Column(
      children: [
        Container(
            width: width,
            padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.01),
            child: Text(
              textFieldLabel,
              style: TextStyle(
                  fontSize: languageProvider.currentLocale == "en" ? 16 : 14,
                  fontWeight: FontWeight.bold),
            )),
        Container(
          child: TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return _errorMessage(textFieldHint);
              }
              return '';
            },
            obscureText: textFieldHint == 'Enter Password Here' ? true : false,
            decoration: InputDecoration(
                hoverColor: Colors.white,
                contentPadding: languageProvider.currentLocale == "en"
                    ? (EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.height * 0.03,
                        horizontal: MediaQuery.of(context).size.width * 0.05))
                    : (EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.height * 0.02,
                        horizontal: MediaQuery.of(context).size.width * 0.04)),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                hintText: textFieldHint,
                hintStyle: TextStyle(
                    fontSize:
                        languageProvider.currentLocale == "en" ? 14 : 13)),
          ),
        ),
        SizedBox(
            height: languageProvider.currentLocale == "en"
                ? MediaQuery.of(context).size.height * 0.03
                : MediaQuery.of(context).size.height * 0.02),
      ],
    );
  }
}
