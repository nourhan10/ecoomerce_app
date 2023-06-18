import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../providers/language_settings_provider.dart';

class SubCategoryModelForHomeScreen extends StatelessWidget {
  List<String> namesOfSubCategoryItems;

  List<String> pathesOfSubCategoryImages;
  String sectionTitle;

  SubCategoryModelForHomeScreen(this.pathesOfSubCategoryImages,
      this.namesOfSubCategoryItems, this.sectionTitle);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    LanguageSettingsProvider languageProvider = Provider.of(context);

    return Column(
      children: [
        Container(
          width: width,
          color: Colors.white,
          padding: EdgeInsets.only(
              left: width * 0.05, right: width * 0.05, top: height * 0.03),
          child: Text(
            sectionTitle,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
            height: height * 0.50,
            /// height: height * 0.72
            color: Colors.white,
            child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
                itemCount: namesOfSubCategoryItems.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    // childAspectRatio: 1.4/ 1.5,
                    crossAxisSpacing: width * 0.002,
                    mainAxisSpacing: height * 0.005),
                itemBuilder: (context, index) {
                  return Container(
                    // margin: EdgeInsets.only(bottom: height * 0.005),
                    child: Column(
                      children: [
                        Container(
                          // margin: EdgeInsets.symmetric(vertical: height * 0.02),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Container(
                                width: width * 0.42,
                                height: height * 0.2,
                                //  height: height * 0.28,
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.white70,
                                      Colors.black12,
                                      Colors.blueGrey,
                                    ],
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft,
                                  ),
                                ),
                                padding: EdgeInsets.symmetric(
                                    vertical: height * 0.02,
                                    horizontal: height * 0.02),
                                child: Image.asset(
                                    pathesOfSubCategoryImages[index]),
                              )),
                        ),
                        SizedBox(height: height * 0.01,),
                        Text(namesOfSubCategoryItems[index],
                            style: TextStyle(
                                fontSize: languageProvider.currentLocale == "en"
                                    ? 14
                                    : 12)),
                      ],
                    ),
                  );
                }))
      ],
    );
  }
}
