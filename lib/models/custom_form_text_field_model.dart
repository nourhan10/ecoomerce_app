import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/language_settings_provider.dart';

class CustomFormTextFieldModel extends StatelessWidget {
  String textFieldHint;
  // final textFieldController;
  // Function onClick;
  CustomFormTextFieldModel({
    required this.textFieldHint,
    // required this.textFieldController
    // required this.onClick
  });
  final _formKey = GlobalKey<FormState>();

  // final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    LanguageSettingsProvider languageProvider = Provider.of(context);
    return Form(
      key: _formKey,
      child: TextFormField(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
          obscureText: (textFieldHint == 'Password must contains 6 letters')
              ? true
              : false,
          decoration: InputDecoration(
            hoverColor: Colors.white,
            contentPadding: EdgeInsets.symmetric(
                vertical: languageProvider.currentLocale == "en"
                    ? MediaQuery.of(context).size.height * 0.02
                    : MediaQuery.of(context).size.height * 0.02,
                horizontal: MediaQuery.of(context).size.width * 0.03),
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
          )),
    );
  }
}
