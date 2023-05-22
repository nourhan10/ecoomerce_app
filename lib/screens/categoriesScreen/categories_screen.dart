import 'package:flutter/material.dart';
import 'categories/accessories_category.dart';
import 'categories/apple_category.dart';
import 'categories/electronics_category.dart';
import 'categories/games_category.dart';
import 'categories/security_systems_category.dart';
import 'categories/smart_phones_category.dart';
import 'categories/tablets_category.dart';

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
    List<String> namesOfAllCategories = [
      "Apple",
      "Smart Phones",
      "Tablets",
      "Accessories",
      "Games",
      "Electronics",
      "Security Systems"
    ];
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
      Container(
        height: height * .1,
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
                height: height * .6,
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
                    const Text(
                      "Search here....",
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
        height: height * 0.8,
        width: width,
        color: Colors.grey[200],
        child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
            height: height,
            width: width * 0.22,
            color: Colors.white,
            child: ListView.builder(
                itemCount: namesOfAllCategories.length,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                        selectedCategoryIndex = selectedIndex;
                      }); // widget.onCategorySelect(namesOfAllCategories[index]);
                    },
                      child: Container(
                        decoration: BoxDecoration(
                          color: selectedIndex == index ? Colors.grey[200] : null,
                          border: selectedIndex == index ? const Border(left: BorderSide(color: Colors.red, width: 2)) : null,
                        ),
                        padding: EdgeInsets.symmetric(vertical: 26.0, horizontal: 8.0),
                        child: Center(
                          child: Text(
                            namesOfAllCategories[index],
                            style: const TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                  );
                }),
          ),
          Container(
            height: height,
            width: width * 0.78,
            color: Colors.grey[200],
            padding:
                const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
            child: Container(
              child: categoriesContent[selectedCategoryIndex],
              // widget.onCategorySelect(categoriesContent[index]),
            ),
          ),
        ]),
      )
    ]));
  }
}
