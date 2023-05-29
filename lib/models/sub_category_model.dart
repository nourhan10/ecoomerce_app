import 'package:flutter/material.dart';

class SubCategoryModel extends StatelessWidget {
  List<String> namesOfSubCategoryItems;

  List<String> pathesOfSubCategoryImages;

  SubCategoryModel(this.pathesOfSubCategoryImages, this.namesOfSubCategoryItems);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.4,
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(14),
              bottomRight: Radius.circular(14)),
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
                child: InkWell(
                  onTap: (){},
                  child: Column(
                    children: [
                      Container(
                        width: 110,
                        height: MediaQuery.of(context).size.height * 0.14,
                        color: Colors.grey[200],
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 12.0),
                        child: Image.asset(pathesOfSubCategoryImages[index]),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(namesOfSubCategoryItems[index],
                          style: const TextStyle(fontSize: 10)),
                    ],
                  ),
                ),
              );
            }));
  }
}
