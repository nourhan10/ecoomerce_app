import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/all_categories_provider.dart';
import '../../providers/language_settings_provider.dart';
import 'categories/accessories_category.dart';
import 'categories/apple_category.dart';
import 'categories/electronics_category.dart';
import 'categories/games_category.dart';
import 'categories/security_systems_category.dart';
import 'categories/smart_phones_category.dart';
import 'categories/tablets_category.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CategoriesScreen extends StatefulWidget {
  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  int selectedIndex = 0;
  int selectedCategoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    LanguageSettingsProvider languageProvider = Provider.of(context);
    List<Widget> categoriesContent = [
      AppleCategory(),
      SmartPhonesCategory(),
      TabletsCategory(),
      AccessoriesCategory(),
      GamesCategory(),
      ElectronicsCategory(),
      SecuritySystemsCategory()
    ];

    return Scaffold(
        body: Column(children: [
      SizedBox(
        height: height * 0.025,
      ),
      Container(
        // height: height * .1,
        width: width,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                // height: height * .3,
                width: width * .9,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey[200]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.search,
                      size: 26,
                      color: Colors.grey[700],
                    ),
                    Text(
                      AppLocalizations.of(context)!.search_here,
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      Container(
          height: languageProvider.currentLocale == "en"
              ? height * 0.8
              : height * 0.788,
          width: width,
          color: Colors.grey[200],
          child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
                height: languageProvider.currentLocale == "en"
                    ? height * 0.8
                    : height * 0.788,
                ///width: width * 0.22,
                width: width * 0.2,
                color: Colors.white,
                child: ListenableProvider(
                    /// create Provider
                    create: (_) => AllCategoriesProvider(),
                    child: Consumer<AllCategoriesProvider>(
                      builder: (context, allCategories, child) {
                        return ListView.builder(
                            itemCount: AllCategoriesProvider
                                .englishNamesOfAllCategories.length,
                            itemBuilder: (BuildContext context, int index) {
                              return InkWell(
                                  onTap: () {
                                    setState(() {
                                      selectedIndex = index;
                                      selectedCategoryIndex = selectedIndex;
                                    });
                                  },
                                  child: Container(decoration: selectedIndex == index ? BoxDecoration(
                                              color: Colors.grey[200],
                                              border: languageProvider
                                                          .currentLocale ==
                                                      "en"
                                                  ? const Border(
                                                      left: BorderSide(
                                                          color: Colors.red,
                                                          width: 2))
                                                  : const Border(
                                                      right: BorderSide(
                                                          color: Colors.red,
                                                          width: 2)),
                                            ) : null,
                                      padding:
                                          languageProvider.currentLocale == "en"
                                              ? EdgeInsets.symmetric(vertical: height * 0.03,
                                              // horizontal: 8.0
                                          )
                                              : EdgeInsets.symmetric(
                                                  vertical: height * 0.03,
                                                  // horizontal: 8.0
                                          ),
                                      child: Center(
                                          child: Text(
                                              languageProvider.currentLocale ==
                                                      "en"
                                                  ? (AllCategoriesProvider
                                                      .englishNamesOfAllCategories[
                                                          index]
                                                      .name)
                                                  : (AllCategoriesProvider
                                                      .arabicNamesOfAllCategories[
                                                          index]
                                                      .name),
                                              style: const TextStyle(
                                                fontSize: 12,
                                              )))));
                            });
                      },
                    ))),
            Container(
                height: languageProvider.currentLocale == "en"
                    ? height * 0.8
                    : height * 0.788,
               /// width: width * 0.78,
                width: width * 0.8,
                color: Colors.grey[200],
                padding: const EdgeInsets.only(
                    left: 10.0, right: 10.0, top: 15.0, bottom: 0.0),
                child: Container(
                  child: categoriesContent[selectedCategoryIndex],
                ))
          ]))
    ]));
  }
}
