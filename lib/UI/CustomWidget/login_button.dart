import 'package:flutter/material.dart';

import '../../constans.dart';

class LoginButton extends StatelessWidget {
  final Function onPressed;
  final String text;

  LoginButton({
    @required this.onPressed,
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(letterSpacing: 3, fontSize: 18),
        ),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            topRight: Radius.circular(0),
            topLeft: Radius.circular(0),
          )),
          onPrimary: Colors.white,
          primary: KLoginButtonColor,
          minimumSize: Size(200, 60),
          elevation: 3,
        ),
      ),
    );
  }
}
