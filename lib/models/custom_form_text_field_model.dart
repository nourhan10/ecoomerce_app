import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/language_settings_provider.dart';

class CustomFormTextFieldModel extends StatelessWidget {
  String textFieldHint;
  var validationCondition;

  // final textFieldController;
  // Function onClick;
  CustomFormTextFieldModel({
    required this.textFieldHint,
    required this.validationCondition,
    // required this.textFieldController
    // required this.onClick
  });

  // final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    LanguageSettingsProvider languageProvider = Provider.of(context);
    return TextFormField(
        validator: validationCondition,
        textInputAction: TextInputAction.next,
        obscureText: (textFieldHint == 'Password must contains 6 letters')
            ? true
            : false,
        decoration: InputDecoration(
          hoverColor: Colors.white,
          contentPadding: EdgeInsets.symmetric(
              vertical: languageProvider.currentLocale == "en"
                  ? height * 0.02
                  : height * 0.02,
              horizontal: width * 0.03),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.grey, width: 0.5),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.grey, width: 0.5),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.grey, width: 0.5),
          ),
          hintText: textFieldHint,
          hintStyle: TextStyle(
              fontSize: languageProvider.currentLocale == "en" ? 16 : 14),
        ));
  }
}
