import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final  hintText;
  final Icon? suffix_icon;

  CustomTextField({required this.hintText,this.suffix_icon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        suffixIcon: suffix_icon,   //NOTE: for eye icon in password
          hintText: hintText,

      ),
    );
  }
}
