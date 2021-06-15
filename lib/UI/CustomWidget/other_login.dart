import 'package:flutter/material.dart';

import '../../constans.dart';

class OtherLogin extends StatelessWidget {
  const OtherLogin({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 60),
      height: 50,
      width: 80,
      child: Stack(
        children: [
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 25,
                decoration: BoxDecoration(
                  color: KTextFieldFillColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
              )),
          Positioned(
              bottom: 10,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    "assets/imges/facebook.png",
                    color: KLoginButtonColor,
                    height: 30,
                    width: 30,
                  ),
                  Image.asset(
                    "assets/imges/google.png",
                    color: KLoginButtonColor,
                    height: 25,
                    width: 25,
                  ),
                  Image.asset(
                    "assets/imges/linkedin.png",
                    color: KLoginButtonColor,
                    height: 25,
                    width: 25,
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
