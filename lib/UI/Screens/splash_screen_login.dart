import 'package:flutter/material.dart';
import 'package:join/UI/Screens/Home.dart';
import 'package:join/UI/Screens/login_screen.dart';

class SplashScreenLogin extends StatefulWidget {
  static String id = "SplashScreenLogin";

  const SplashScreenLogin({Key key}) : super(key: key);

  @override
  _SplashScreenLoginState createState() => _SplashScreenLoginState();
}

class _SplashScreenLoginState extends State<SplashScreenLogin> {
  @override
  void initState() {

    super.initState();


    Future.delayed(Duration(seconds: 1)).then((value) {
      Navigator.of(context)
          .pushNamedAndRemoveUntil(LoginScreen.id, (route) => false);
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


  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();


    precacheImage(AssetImage("assets/imges/loginImage.jpg"), context);
  }
}
