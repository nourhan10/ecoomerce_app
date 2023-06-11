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

  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    LanguageSettingsProvider languageProvider = Provider.of(context);
    return Form(
      key: formkey,
      child: TextFormField(
          // controller: textFieldController,
          // validator: (value) {
          //   if (value!.isEmpty) {
          //     return "* Required";
          //   } else
          //     return null;
          // },
          obscureText: (textFieldHint == 'Password must contains 6 letters')
              ? true
              : false,
          // onSaved: onClick(),
          decoration: InputDecoration(
            hoverColor: Colors.white,
            contentPadding: EdgeInsets.symmetric(
                vertical: languageProvider.currentLocale == "en"
                    ? MediaQuery.of(context).size.height * 0.03
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
