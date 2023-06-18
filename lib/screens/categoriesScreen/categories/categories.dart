// import 'package:flutter/material.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
//
// class Categories extends StatelessWidget {
//   const Categories({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery.of(context).size.height;
//     final width = MediaQuery.of(context).size.width;
//     return Scaffold(
//       body: Column(children: [
//         SizedBox(
//           height: height * 0.025,
//         ),
//         Container(
//           // height: height * .1,
//           width: width,
//           color: Colors.white,
//           child: Padding(
//             padding: EdgeInsets.all(width * 0.01),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 GestureDetector(
//                     onTap: () {},
//                     child: Icon(
//                       Icons.menu,
//                       color: Colors.grey[500],
//                       size: width * 0.1,
//                     )),
//                 SizedBox(
//                   width: width * 0.03,
//                 ),
//                 Container(
//                   alignment: Alignment.center,
//                   // height: height * .3,
//                   width: width * .75,
//                   padding: const EdgeInsets.all(8),
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(8),
//                       color: Colors.grey[200]),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Icon(
//                         Icons.search,
//                         size: 26,
//                         color: Colors.grey[700],
//                       ),
//                       Text(
//                         AppLocalizations.of(context)!.search_here,
//                         style: TextStyle(fontSize: 16),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ]),
//       drawer: Drawer(
//         child: ListView(
//           // Important: Remove any padding from the ListView.
//           padding: EdgeInsets.zero,
//           children: [
//             const DrawerHeader(
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//               ),
//               child: Text('Drawer Header'),
//             ),
//             ListTile(
//               title: const Text('Item 1'),
//               onTap: () {
//                 // Update the state of the app
//                 // ...
//                 // Then close the drawer
//                 Navigator.pop(context);
//               },
//             ),
//             ListTile(
//               title: const Text('Item 2'),
//               onTap: () {
//                 // Update the state of the app
//                 // ...
//                 // Then close the drawer
//                 Navigator.pop(context);
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:ecommerce_application/screens/categoriesScreen/categories/accessories_category.dart';
import 'package:ecommerce_application/screens/categoriesScreen/categories/apple_category.dart';
import 'package:ecommerce_application/screens/categoriesScreen/categories/electronics_category.dart';
import 'package:ecommerce_application/screens/categoriesScreen/categories/games_category.dart';
import 'package:ecommerce_application/screens/categoriesScreen/categories/security_systems_category.dart';
import 'package:ecommerce_application/screens/categoriesScreen/categories/smart_phones_category.dart';
import 'package:ecommerce_application/screens/categoriesScreen/categories/tablets_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../../providers/all_categories_provider.dart';
import '../../../providers/language_settings_provider.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int selectedIndex = 0;
  int selectedCategoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
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
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.grey,
          ),
          backgroundColor: Colors.grey[200],
          // toolbarHeight: height * 0.0,
          flexibleSpace: SizedBox(
            height: height,
            child: Container(
                // height: height * .1,
                width: width,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      // Icon(Icons.menu, color: Colors.red, size: ),
                      Container(
                        alignment: languageProvider.currentLocale == "en"
                            ? Alignment.centerRight
                            : Alignment.centerLeft,
                        height: height * 0.06,
                        // height: height * .3,
                        width: width * .7,
                        padding: EdgeInsets.symmetric(horizontal: width * 0.03),
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
                )),
          ),
        ),
        drawer: Container(
          width: width * 0.5,
          child: Drawer(
              child: ListenableProvider(

                  /// create Provider
                  create: (_) => AllCategoriesProvider(),
                  child: Consumer<AllCategoriesProvider>(
                    builder: (context, allCategories, child) {
                      return ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
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
                                child: Container(
                                    decoration: selectedIndex == index
                                        ? BoxDecoration(
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
                                          )
                                        : null,
                                    padding: EdgeInsets.symmetric(
                                        vertical: height * 0.03),
                                    // languageProvider.currentLocale == "en"
                                    //     ? EdgeInsets.symmetric(vertical: height * 0.03,
                                    // horizontal: 8.0
                                    // )
                                    //     : EdgeInsets.symmetric(
                                    //         vertical: height * 0.03,
                                    // horizontal: 8.0
                                    // ),
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
        ),
        body: Container(
            height: languageProvider.currentLocale == "en"
                ? height * 0.8
                : height * 0.788,
            width: width,
            color: Colors.grey[200],
            padding: EdgeInsets.symmetric(horizontal: width * 0.04, vertical: height * 0.02),
            child: Container(
              child: categoriesContent[selectedCategoryIndex],
            )));
  }
}
