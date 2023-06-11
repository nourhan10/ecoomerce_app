import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/language_settings_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
            child: const Icon(
              Icons.arrow_back_ios,
              color: Color(0xFF575656),
            )),
        title: Container(
          margin: languageProvider.currentLocale == "en"
              ? (EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.3))
              : (EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.23)),
          child: Text(AppLocalizations.of(context)!.settings,
              style:
                  const TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
        ),
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
                  // showDialog(context: context, builder: (context){
                  //   return const Center(child: CircularProgressIndicator());
                  // });
                  // Navigator.of(context).pop();
                  languageProvider.changeCurrentLocale("ar");
                  // Navigator.of(context).pop();
                },
                child: Container(
                  width: width * 0.6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: languageProvider.currentLocale == "ar"
                        ? Colors.red
                        : const Color(0xFF575656),
                  ),
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.2,
                      vertical: MediaQuery.of(context).size.height * 0.017),
                  // margin:
                  //     EdgeInsets.all(MediaQuery.of(context).size.height * 0.02),
                  child: const Text(
                    textAlign: TextAlign.center,
                    "العربية",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              InkWell(
                  onTap: () {
                    // showDialog(context: context, builder: (context){
                    //   return const Center(child: CircularProgressIndicator());
                    // });
                    // Navigator.of(context).pop();
                    languageProvider.changeCurrentLocale("en");
                  },
                  child: Container(
                    width: width * 0.6,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: languageProvider.currentLocale == "en"
                          ? Colors.red
                          : const Color(0xFF575656),
                    ),
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.2,
                        vertical: MediaQuery.of(context).size.height * 0.027),
                    // margin: EdgeInsets.all(
                    //     MediaQuery.of(context).size.height * 0.02),
                    // color: Color(0xFF575656),
                    child: const Text(
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
