import 'package:flutter/material.dart';

class SubCategoryModelForHomeScreen extends StatelessWidget {
  List<String> namesOfSubCategoryItems;

  List<String> pathesOfSubCategoryImages;
  String sectionTitle;

  SubCategoryModelForHomeScreen(this.pathesOfSubCategoryImages,
      this.namesOfSubCategoryItems, this.sectionTitle);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          width: width,
          color: Colors.white,
          padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.05,
              right: MediaQuery.of(context).size.width * 0.05,
              top: MediaQuery.of(context).size.height * 0.03),
          child: Text(
            sectionTitle,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
            height: MediaQuery.of(context).size.height * 0.72,
            color: Colors.white,
            child: GridView.builder(
                itemCount: namesOfSubCategoryItems.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 3/ 2.8,
                    crossAxisSpacing: MediaQuery.of(context).size.width * 0.002,
                    mainAxisSpacing:
                        MediaQuery.of(context).size.height * 0),
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(
                              vertical:
                                  MediaQuery.of(context).size.height * 0.02),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.4,
                                height:
                                    MediaQuery.of(context).size.height * 0.28,
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [Colors.white70, Colors.black12, Colors.blueGrey,],
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      ),
                                ),
                                padding: EdgeInsets.symmetric(
                                    vertical:
                                        MediaQuery.of(context).size.height *
                                            0.02,
                                    horizontal:
                                        MediaQuery.of(context).size.height *
                                            0.02),
                                child: Image.asset(
                                    pathesOfSubCategoryImages[index]),
                              )),
                        ),
                        Text(namesOfSubCategoryItems[index],
                            style: const TextStyle(fontSize: 14)),
                      ],
                    ),
                  );
                }))
      ],
    );
  }
}
