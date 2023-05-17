import 'package:flutter/material.dart';

class HomeContentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Container(
            height: height * .1,
            width: width,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: height * .6,
                    width: width * .7,
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
                  Image.asset(
                    "assets/images/logo.png",
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
