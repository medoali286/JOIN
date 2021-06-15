import 'package:flutter/material.dart';
import 'package:join/UI/Screens/Home.dart';

class SplashScreen extends StatefulWidget {
  static String id = "SplashScreen";

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(Duration(seconds: 1)).then((value) {
      Navigator.of(context).pushNamedAndRemoveUntil(Home.id, (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            // color: Colors.red,

            child: Image.asset(
          "assets/imges/JOIN NAME.png",
          height: 100,
        )),
      ),
    );
  }
}
