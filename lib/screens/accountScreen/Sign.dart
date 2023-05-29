import 'package:flutter/material.dart';

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}
class _SignFormState extends State<SignForm> {
  // GlobalKey This uniquely identifies the Form , and allows validation of the form in a later step.
  final _formKey = GlobalKey<FormState>();
  String? email, password;
  bool remember = false;
  final List<String> errors = [];

// func with named parameter
  void addError({required String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({required String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            // TextFormField - Creates a [FormField] that contains a [TextField].
            buildEmailFormField(),
            SizedBox(height: 30.0),
            buildPasswordFormField(),
            SizedBox(height: 30.0),
            Row(
              children: [
                Checkbox(
                  value: remember,
                  onChanged: (value) {
                    setState(() {
                      remember = value ?? false;
                    });
                  },
                ),
                Text("Remember me"),
                Spacer(),
                GestureDetector(
                  // onTap: () => Navigator.pushNamed(
                  //     context, ForgotPasswordScreen.routeName),
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                )
              ],
            ),
            // FormError(errors: errors),
            SizedBox(height: 30.0),
            ElevatedButton(
              child: Text('Login'),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  // if all are valid then go to success screen
                  // Navigator.pushReplacementNamed(
                  // context, LoginSuccessScreen.routeName);

                }
                errors.forEach((String error) {
                  debugPrint('Error from Form: $error');
                });
              },
            )
          ],
        ),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      // obscure visibility of the password
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains('kPassNullError')) {
          removeError(error: 'kPassNullError');
        } else if (value.length >= 8) {
          removeError(error: 'kShortPassError');
        }
        // In case a user removed some characters below the threshold, show alert
        else if (value.length < 8 && value.isNotEmpty) {
          addError(error: 'kShortPassError');
        }
        return null;
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          addError(error: 'kPassNullError');
          removeError(error: 'kShortPassError');
          return 'Pass Empty';
        } else if (value.length < 8 && value.isNotEmpty) {
          addError(error: 'kShortPassError');
          return 'Short Pass';
        }
        return null;
      },
      decoration: InputDecoration(
        // uses the InputDecorationTheme defined in my theme.dart file
        labelText: "Password",
        hintText: "Enter your password",
        // When [FloatingLabelBehavior.always] the label will always float at the top of the field above the content.
        floatingLabelBehavior: FloatingLabelBehavior.always,
        // suffixIcon: CustomSuffixIcon(
        //   svgIcon: "assets/icons/Lock.svg",
        // ),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      // Requests a keyboard with ready access to the "@" and "." keys.
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains('kEmailNullError')) {
          removeError(error: 'kEmailNullError');
        }
        // else if (emailValidatorRegExp.hasMatch(value)) {
        //   removeError(error: 'kInvalidEmailError');
        // }
        else if (value.isNotEmpty) {
          addError(error: 'kInvalidEmailError');
          return null;
        }
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          addError(error: 'kEmailNullError');
          removeError(error: 'kInvalidEmailError');
          return 'Email Empty';
        } else if (value.isNotEmpty) {
          addError(error: 'kInvalidEmailError');
        }
        return null;
      },
      decoration: InputDecoration(
        // uses the InputDecorationTheme defined in my theme.dart file
        labelText: "Email",
        hintText: "Enter your email",
        // When [FloatingLabelBehavior.always] the label will always float at the top of the field above the content.
        floatingLabelBehavior: FloatingLabelBehavior.always,
        // suffixIcon: CustomSuffixIcon(
        //   svgIcon: "assets/icons/Mail.svg",
        // ),
      ),
    );
  }
}