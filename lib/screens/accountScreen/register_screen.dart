// import 'package:ecommerce_application/models/custom_form_text_field_model.dart';
// import 'package:firebase_auth/firebase_auth.dart';
//
// // import 'package:ecommerce_application/screens/accountScreen/account_screen.dart';
// // import 'package:ecommerce_application/screens/accountScreen/account_screen2.dart';
// // import 'package:ecommerce_application/screens/accountScreen/account_screen2.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../../providers/language_settings_provider.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
//
// class RegisterScreen extends StatefulWidget {
//   static String routeName = "register screen";
//
//   @override
//   State<RegisterScreen> createState() => _RegisterScreenState();
// }
//
// class _RegisterScreenState extends State<RegisterScreen> {
//   final emailController = TextEditingController();
//   final passwordController = TextEditingController();
//
//   @override
//   void dispose() {
//     emailController.dispose();
//     passwordController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery.of(context).size.height;
//     final width = MediaQuery.of(context).size.width;
//     LanguageSettingsProvider languageProvider = Provider.of(context);
//
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.white,
//           toolbarHeight: height * 0.08,
//           leading: InkWell(
//               onTap: () {
//                 Navigator.pop(context, true);
//               },
//               child: const Icon(
//                 Icons.arrow_back_ios,
//                 color: Color(0xFF575656),
//               )),
//           // title: Container(
//           //   margin: languageProvider.currentLocale == "en"
//           //       ? (EdgeInsets.only(left: width * 0.2))
//           //       : (EdgeInsets.only(right: width * 0.13)),
//           //   child: Text(AppLocalizations.of(context)!.register,
//           //       style: TextStyle(
//           //           fontWeight: FontWeight.bold, color: Colors.black)),
//           // ),
//         ),
//         body: Container(
//             color: Colors.grey[200],
//             padding: EdgeInsets.symmetric(
//               horizontal: width * 0.05,
//             ),
//             child: ListView(children: [
//               Center(
//                 child: Container(
//                   height: height * 0.25,
//                   width: height * 0.3,
//                   padding: EdgeInsets.symmetric(horizontal: width * 0.06),
//                   // decoration: BoxDecoration(
//                   //   color: Colors.white,
//                   //   borderRadius: BorderRadius.circular(height * 0.15),
//                   // ),
//                   child: Image.asset("assets/images/logo.png"),
//                 ),
//               ),
//               Form(
//                   child: Column(
//                 children: [
//                   CustomFormTextFieldModel(
//                     textFieldHint: AppLocalizations.of(context)!.first_name,
//                   ),
//                   SizedBox(
//                     height: height * 0.02,
//                   ),
//                   CustomFormTextFieldModel(
//                     textFieldHint: AppLocalizations.of(context)!.last_name,
//                   ),
//                   SizedBox(
//                     height: height * 0.02,
//                   ),
//                   CustomFormTextFieldModel(
//                     textFieldHint: AppLocalizations.of(context)!.email,
//                     // textFieldController: emailController,
//                   ),
//                   SizedBox(
//                     height: height * 0.02,
//                   ),
//                   Row(
//                     children: [
//                       Container(
//                         padding: EdgeInsets.symmetric(
//                             vertical: height * 0.02, horizontal: width * 0.02),
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(8),
//                           border: Border.all(color: Colors.grey, width: 0.5),
//                         ),
//                         child: Text(" +20  "),
//
//                         // languageProvider.currentLocale == "en"
//                         //     ? Text(" +20  ")
//                         //     : Text(" 02+  "),
//                       ),
//                       SizedBox(
//                         width: width * 0.02,
//                       ),
//                       Expanded(
//                           child: CustomFormTextFieldModel(
//                         textFieldHint: AppLocalizations.of(context)!.phone,
//                         // onClick: () {},
//                       )),
//                     ],
//                   ),
//                   SizedBox(
//                     height: height * 0.02,
//                   ),
//                   CustomFormTextFieldModel(
//                     textFieldHint: AppLocalizations.of(context)!.password,
//                     // textFieldController: passwordController,
//                   ),
//                   SizedBox(
//                     height: height * 0.02,
//                   ),
//                   ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.red,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(20),
//                         ),
//                         padding: EdgeInsets.symmetric(
//                             horizontal: width * 0.1,
//                             vertical: languageProvider.currentLocale == "en"
//                                 ? height * 0.017
//                                 : height * 0.02),
//                       ),
//                       onPressed: () {
//                         // FirebaseAuth.instance
//                         //     .createUserWithEmailAndPassword(
//                         //     email: emailController.text.trim(),
//                         //     password: passwordController.text.trim());
//                       },
//                       child: Text(
//                         AppLocalizations.of(context)!.register,
//                         style: TextStyle(
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 16),
//                       )),
//                   SizedBox(
//                     height: height * 0.02,
//                   ),
//                   Align(
//                     alignment: Alignment.bottomCenter,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(AppLocalizations.of(context)!.if_have_account),
//                         SizedBox(
//                           width: width * 0.03,
//                         ),
//                         InkWell(
//                           onTap: () {
//                             Navigator.pop(context, true);
//                           },
//                           child: Text(
//                             AppLocalizations.of(context)!.login,
//                             style: TextStyle(
//                                 color: Colors.red, fontWeight: FontWeight.bold),
//                           ),
//                         ),
//                       ],
//                     ),
//                   )
//                   // SizedBox(
//                   //   height: height * 0.03,
//                   // ),
//                 ],
//               ))
//             ])));
//   }
// }
