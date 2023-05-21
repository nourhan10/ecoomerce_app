import 'package:flutter/material.dart';

class OffersSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    List<String> ListOfImagesPathForOffers = [
      "assets/images/offer1.png",
      "assets/images/offer2.png",
      "assets/images/offer3.jpg",
      "assets/images/offer4.jpg"
    ];
    return Container(
        padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.01),
        color: Colors.grey[200],
        height: height * 0.3,
        child: ListView.builder(
            itemCount: ListOfImagesPathForOffers.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 3.0, horizontal: 12.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0), //add border radius
                  child: Image.asset(
                    ListOfImagesPathForOffers[index],
                    height: height,
                    width: width * 0.75,
                    fit:BoxFit.cover,
                  ),
                ),
              );
            }));
  }
}
