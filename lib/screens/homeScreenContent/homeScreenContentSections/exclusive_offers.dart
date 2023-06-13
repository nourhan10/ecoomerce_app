import 'package:flutter/material.dart';

class ExclusiveOffers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    List<String> ListOfImagesPathForExclusiveOffers = [
      "assets/images/offer5.png",
      "assets/images/offer6.jpg"
    ];
    return Container(
      // color: Colors.grey[200],
        padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.01),
        // color: Colors.yellow,
        height: height * 0.23,
        width: width,
        child: ListView.builder(
            itemCount: ListOfImagesPathForExclusiveOffers.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.02),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0), //add border radius
                  child: Image.asset(
                    ListOfImagesPathForExclusiveOffers[index],
                    height: height,
                    width: width * 0.45,
                    fit:BoxFit.cover,
                  ),
                ),
              );
            })
        // Container(
        // color: Colors.red,
        // ),

        );
  }
}
