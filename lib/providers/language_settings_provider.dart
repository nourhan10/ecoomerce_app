import 'package:flutter/material.dart';

class LanguageSettingsProvider extends ChangeNotifier {
  String currentLocale = "en";

  changeCurrentLocale(String newLocale) {
    currentLocale = newLocale;
    notifyListeners();
  }
}
