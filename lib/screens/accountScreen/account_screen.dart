import 'package:ecommerce_application/models/custom_form_text_field_model.dart';
import 'package:ecommerce_application/screens/accountScreen/change_language_screen.dart';
import 'package:ecommerce_application/screens/accountScreen/register_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../providers/language_settings_provider.dart';

class AccountScreen extends StatefulWidget {
  static final String routeName = "account screen";

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  final _formKey = GlobalKey<FormState>();

  // final emailController = TextEditingController();
  // final passwordController = TextEditingController();
  //
  // @override
  // void dispose() {
  //   emailController.dispose();
  //   passwordController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    LanguageSettingsProvider languageProvider = Provider.of(context);

    //
    // String _password;
    // String _email;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: height * 0.08,
        title: Center(
          child: Text(AppLocalizations.of(context)!.login,
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
                Column(
                  children: [
                    CustomFormTextFieldModel(
                      textFieldHint: AppLocalizations.of(context)!.email,
                      // textFieldHint: "Email",
                      // textFieldController: emailController,
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    CustomFormTextFieldModel(
                      textFieldHint: AppLocalizations.of(context)!.password,
                      // textFieldHint: "Password must contains 6 letters",
                      // textFieldController: passwordController,
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
                              horizontal: width * 0.1,
                              vertical: languageProvider.currentLocale == "en"
                                  ? height * 0.017
                                  : height * 0.02),
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Processing Data')),
                            );
                          }
                        },
                        // FirebaseAuth.instance.signInWithEmailAndPassword(
                        //     email: emailController.text.trim(),
                        //     password: passwordController.text.trim());
                        // _formKey.currentState!.validate();
                        child: Text(
                          AppLocalizations.of(context)!.login,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        )),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Align(
                      // alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(AppLocalizations.of(context)!
                              .do_not_have_an_account),
                          SizedBox(
                            width: width * 0.03,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, RegisterScreen.routeName);
                            },
                            child: Text(
                              AppLocalizations.of(context)!.register,
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    // Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(
                            context, ChangeLanguageScreen.routeName);
                      },
                      child: Text(
                        AppLocalizations.of(context)!.change_lang,
                        style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                    ),
                    // Spacer(),
                  ],
                )
              ],
            )),
      ),
    );
  }
}
