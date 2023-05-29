import 'package:flutter/material.dart';

class FavScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 600,
      color: Colors.grey[200],
      child: Center(child: Text("Favorite Screen", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
    );
  }
}