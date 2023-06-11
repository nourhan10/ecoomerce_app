// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
//
// class LoginPage extends StatelessWidget {
//   final users = FirebaseAuth.instance.currentUser;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: [
//             Text('${users?.email}', style: TextStyle(fontSize: 40),),
//             ElevatedButton(
//                 style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
//                 onPressed: () {
//                   FirebaseAuth.instance.signOut();
//                 },
//                 child: Text("Log Out"))
//           ],
//         ),
//       ),
//     );
//   }
// }
