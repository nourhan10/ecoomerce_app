import 'package:flutter/material.dart';

class SalesSection extends StatelessWidget {
  // const SalesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding:  EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Special Sales", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              InkWell(
                onTap: () {},
                child: const Text(
                  "See More",
                  style: TextStyle(color: Colors.red, fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.04,),
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0), //add border radius
            child: InkWell(
              onTap: (){},
              child: Image.asset(
                "assets/images/sales.jpg",
                height: height * 0.4,
                width: width * 0.9,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02,)
        ],
      ),
    );
  }
}
