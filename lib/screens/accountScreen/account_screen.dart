import 'package:ecommerce_application/models/custom_form_text_field_model.dart';
import 'package:ecommerce_application/screens/accountScreen/register_screen.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  static final String routeName = "account screen";
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    String _password;
    String _email;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: height * 0.08,
        title: const Center(
          child: Text('Login',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
        ),
        backgroundColor: Colors.white,
      ),
      body: Form(
        key: _formKey,
        child: Container(
            color: Colors.grey[200],
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.05,
            ),
            child: ListView(
              children: [
                Center(
                  child: Container(
                    height: height * 0.25,
                    width: height * 0.3,
                    padding: EdgeInsets.symmetric(horizontal: width * 0.06),
                    child: Image.asset("assets/images/logo.png"),
                  ),
                ),
                Form(
                    child: Column(
                  children: [
                    CustomFormTextFieldModel(
                      textFieldHint: "Email",
                      // onClick: (value) {
                      //   // _email = value;
                      // },
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    CustomFormTextFieldModel(
                      textFieldHint: "Password must contains 6 letters",
                      // onClick: (value) {
                      //   // _password = value;
                      // },
                    ),
                    SizedBox(
                      height: height * 0.03,
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
                        onPressed: () {
                          _formKey.currentState!.validate();
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        )),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Don't have an account?  "),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, RegisterScreen.routeName);
                            },
                            child: const Text(
                              "REGISTER",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ))
              ],
            )),
      ),
    );
  }
}
