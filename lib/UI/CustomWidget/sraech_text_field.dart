import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constans.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        fontSize: 18,
      ),
      textAlignVertical: TextAlignVertical.bottom,
      cursorColor: Colors.white,
      decoration: InputDecoration(
        hintText: "Search....",
        fillColor: KTextFieldFillColor,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(5),
            bottomLeft: Radius.circular(5),
          ),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(5),
            bottomLeft: Radius.circular(5),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(5),
            bottomLeft: Radius.circular(5),
          ),
        ),
      ),
    );
  }
}
