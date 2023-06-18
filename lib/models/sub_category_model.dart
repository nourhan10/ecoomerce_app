import 'package:flutter/material.dart';

class SubCategoryModel extends StatelessWidget {
  List<String> namesOfSubCategoryItems;

  List<String> pathesOfSubCategoryImages;

  SubCategoryModel(
      this.pathesOfSubCategoryImages, this.namesOfSubCategoryItems);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
        height: MediaQuery.of(context).size.height * 0.3,
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(14),
              bottomRight: Radius.circular(14)),
          color: Colors.white,
        ),
        child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
            itemCount: namesOfSubCategoryItems.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3),
            itemBuilder: (context, index) {
              return Container(
                // height: height * 0.25,
                // color: Colors.purple,
                //height: 130
                // margin: EdgeInsets.symmetric(horizontal: width * 0.01),
                child: InkWell(
                  onTap: () {},
                  child:Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // SizedBox(height:  height * 0.02,),
                        Container(
                          width: width * 0.2,
                          height: height * 0.09,
                          color: Colors.grey[200],
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 12.0),
                          child: Image.asset(pathesOfSubCategoryImages[index]),
                        ),
                        // SizedBox(
                        //   height: height * 0.005,
                        // ),
                        Text(namesOfSubCategoryItems[index],
                            style: const TextStyle(fontSize: 10)),
                        // SizedBox(
                        //   height: height * 0.005,
                        // ),
                        // SizedBox(height: height * 0.02,)
                      ],
                    ),
                  ),
              );
            }));
  }
}
