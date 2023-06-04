import 'package:ecommerce_application/models/custom_form_text_field_model.dart';
// import 'package:ecommerce_application/screens/accountScreen/account_screen.dart';
// import 'package:ecommerce_application/screens/accountScreen/account_screen2.dart';
// import 'package:ecommerce_application/screens/accountScreen/account_screen2.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/language_settings_provider.dart';

class RegisterScreen extends StatelessWidget {
  static String routeName = "register screen";

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    LanguageSettingsProvider languageProvider = Provider.of(context);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: height * 0.08,
          leading: InkWell(
              onTap: () {
                Navigator.pop(context, true);
              },
              child: const Icon(
                Icons.arrow_back_ios,
                color: Color(0xFF575656),
              )),
          title: Container(
            margin: languageProvider.currentLocale == "en"
                ? (EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.3))
                : (EdgeInsets.only(
                    right: MediaQuery.of(context).size.width * 0.23)),
            child: const Text('Register',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black)),
          ),
        ),
        body: Container(
            color: Colors.grey[200],
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.05,
            ),
            child: ListView(children: [
              Center(
                child: Container(
                  height: height * 0.25,
                  width: height * 0.3,
                  padding: EdgeInsets.symmetric(horizontal: width * 0.06),
                  // decoration: BoxDecoration(
                  //   color: Colors.white,
                  //   borderRadius: BorderRadius.circular(height * 0.15),
                  // ),
                  child: Image.asset("assets/images/logo.png"),
                ),
              ),
              Form(
                  child: Column(
                children: [
                  CustomFormTextFieldModel(
                      textFieldHint: "First Name",
                      // onClick: () {}
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  CustomFormTextFieldModel(
                    textFieldHint: "Last Name",
                    // onClick: () {},
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  CustomFormTextFieldModel(
                    textFieldHint: "Email",
                    // onClick: () {},
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical:
                                MediaQuery.of(context).size.height * 0.025,
                            horizontal:
                                MediaQuery.of(context).size.width * 0.02),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.grey, width: 0.5),
                        ),
                        child: Text("+20  "),
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Expanded(
                          child: CustomFormTextFieldModel(
                        textFieldHint: "Phone Number",
                        // onClick: () {},
                      )),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  CustomFormTextFieldModel(
                    textFieldHint: "Password must contains 6 letters",
                    // onClick: () {},
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: width * 0.1, vertical: height * 0.03),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Register",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      )),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Have an account?  "),
                        InkWell(
                          onTap: () {
                            Navigator.pop(
                                context, true);
                          },
                          child: const Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.red, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  )
                  // SizedBox(
                  //   height: height * 0.03,
                  // ),
                ],
              ))
            ])));
  }
}
