import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/language_settings_provider.dart';

class ChangeLanguageScreen extends StatelessWidget {
  static final routeName = "change language screen";

  @override
  Widget build(BuildContext context) {
    LanguageSettingsProvider languageProvider = Provider.of(context);
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
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
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.03,
              vertical: MediaQuery.of(context).size.height * 0.03),
          child: Column(
            children: [
              Icon(
                Icons.ac_unit_sharp,
                size: width * 0.4,
                color: Colors.grey[400],
              ),
              const Text("Choose Language",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              const Text("قم باختيار اللغة",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              InkWell(
                onTap: () {
                  languageProvider.changeCurrentLocale("ar");
                },
                child: Container(
                  width: width * 0.6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xFF575656),
                  ),
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.2,
                      vertical: MediaQuery.of(context).size.height * 0.017),
                  margin:
                      EdgeInsets.all(MediaQuery.of(context).size.height * 0.02),
                  child: Text(
                    textAlign: TextAlign.center,
                    "العربية",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              InkWell(
                  onTap: () {
                    languageProvider.changeCurrentLocale("en");
                  },
                  child: Container(
                    width: width * 0.6,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xFF575656),
                    ),
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.2,
                        vertical: MediaQuery.of(context).size.height * 0.027),
                    margin: EdgeInsets.all(
                        MediaQuery.of(context).size.height * 0.02),
                    // color: Color(0xFF575656),
                    child: Text(
                        textAlign: TextAlign.center,
                        "English",
                        style: TextStyle(fontSize: 18, color: Colors.white)),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
