import 'package:flutter/material.dart';

class SubCategory extends StatelessWidget {
  List<String> namesOfSubCategoryItems;

  List<String> pathesOfSubCategoryImages;

  SubCategory(this.pathesOfSubCategoryImages, this.namesOfSubCategoryItems);

  @override
  Widget build(BuildContext context) {
    return
        // ConstrainedBox(
        // constraints: BoxConstraints(
        //   minHeight: 300,
        //   // maxHeight: 700,
        // ),
        // child:
        Container(
          height: MediaQuery.of(context).size.height * 0.4,
          // height: 300,
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(14),
                  bottomRight: Radius.circular(14)),
              // borderRadius: BorderRadius.circular(14),
              color: Colors.white,
            ),
            child: GridView.builder(
                itemCount: namesOfSubCategoryItems.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (context, index) {
                  return Container(
                    height: 130,
                    margin: const EdgeInsets.all(5.0),
                    // color: Colors.amber,
                    child: Column(
                      children: [
                        Container(
                          width: 110,
                          height: MediaQuery.of(context).size.height * 0.14,
                          color: Colors.grey[200],
                          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
                          child: Image.asset(pathesOfSubCategoryImages[index]),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        // Padding(
                        // padding: EdgeInsets.symmetric(horizontal: 10.0),
                        Text(namesOfSubCategoryItems[index],
                            // overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 12)),
                      ],
                    ),
                  );
                })
        );
  }
}
