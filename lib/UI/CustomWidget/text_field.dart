import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constans.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final Function onClick;
  final String Function(String) validate;
  final TextEditingController controller;
  final Color fillColor;
  final Color cursorColor;
  final Color hintTextColor;
  final double topLeftBorderRadius;
  final double topRightBorderRadius;
  final double bottomLeftBorderRadius;
  final double bottomRightBorderRadius;
  final bool obscureText;
  final Function(String) onChanged;
  final Widget suffixIcon;

  String _errorMessage(String hint) {
    switch (hint) {
      case 'FirstName':
        return 'name is empty !';
      case 'LastName':
        return 'name is empty !';
      case 'Email':
        return 'email is empty !';
      case 'Password':
        return 'password is empty !';
      case 'Age':
        return 'age is empty !';
    }
  }

  CustomTextField({
    @required this.onClick,
    @required this.hint,
    @required this.validate,
    this.controller,
    this.onChanged,
    @required this.fillColor,
    @required this.cursorColor,
    @required this.hintTextColor,
    @required this.bottomLeftBorderRadius,
    @required this.bottomRightBorderRadius,
    @required this.topLeftBorderRadius,
    @required this.topRightBorderRadius,
    @required this.obscureText,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    BorderRadius borderRadius = BorderRadius.only(
        topLeft: Radius.circular(topRightBorderRadius),
        topRight: Radius.circular(topRightBorderRadius),
        bottomLeft: Radius.circular(bottomLeftBorderRadius),
        bottomRight: Radius.circular(bottomRightBorderRadius));

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextFormField(
        obscureText: obscureText,
        validator: validate,
        cursorColor: cursorColor,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          contentPadding: EdgeInsets.only(left: 30, top: 40),
          hintText: hint,
          hintStyle: TextStyle(color: hintTextColor, fontSize: 18),
          filled: true,
          fillColor: fillColor,
          enabledBorder: OutlineInputBorder(
            borderRadius: borderRadius,
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: borderRadius,
            borderSide: BorderSide(color: Colors.white),
          ),
          border: OutlineInputBorder(
            borderRadius: borderRadius,
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
        onSaved: onClick,
        onChanged: onChanged,
        controller: controller,
      ),
    );
  }
}
