import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/language_settings_provider.dart';

class CustomElevatedButtonModel extends StatelessWidget {
  String buttonText;
  Color buttonColor;

  CustomElevatedButtonModel(this.buttonText, this.buttonColor);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    // String email;
    // String password;
    LanguageSettingsProvider languageProvider = Provider.of(context);
    return Form(
      key: _formKey,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0)),
            backgroundColor: buttonColor,
            fixedSize: Size(
                width,
                languageProvider.currentLocale == "en"
                    ? height * 0.08
                    : height * 0.075),
          ),
          onPressed: () {
            _formKey.currentState!.validate();
          },
          child: Align(
            alignment: Alignment.center,
            child: Text(
              buttonText,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          )),
    );
  }
}
