import 'package:flutter/material.dart';

class CustomFormTextFieldModel extends StatelessWidget {
  String textFieldHint;
  // Function onClick;

  CustomFormTextFieldModel({required this.textFieldHint,
    // required this.onClick
  });
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: TextFormField(
          validator: (value) {
            if (value!.isEmpty) {
              return "* Required";
            } else
              return null;
          },
          obscureText: (textFieldHint == 'Password must contains 6 letters')
              ? true
              : false,
          // onSaved: onClick(),
          decoration: InputDecoration(
            hoverColor: Colors.white,
            contentPadding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.03,
                horizontal: MediaQuery.of(context).size.width * 0.03),
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.grey, width: 0.5),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.grey, width: 0.5),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.grey, width: 0.5),
            ),
            hintText: textFieldHint,
            hintStyle: TextStyle(fontSize: 16),
          )),
    );
  }
}
