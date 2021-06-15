import 'package:flutter/material.dart';
import 'package:join/UI/Screens/Home.dart';
import 'package:join/UI/Screens/login_screen.dart';
import 'package:join/UI/Screens/profile.dart';
import 'package:join/UI/Screens/scan_qr.dart';
import 'package:join/UI/Screens/signup_screen.dart';
import 'package:join/UI/Screens/splach_screen.dart';
import 'package:join/UI/Screens/splash_screen_login.dart';

Map<String, Widget Function(BuildContext)> routes() {
  return {
    LoginScreen.id: (c) => LoginScreen(),
    SignUpScreen.id: (c) => SignUpScreen(),
    Home.id: (c) => Home(),
    ProfileScreen.id: (c) => ProfileScreen(),
    SplashScreen.id: (c) => SplashScreen(),
    SplashScreenLogin.id: (c) => SplashScreenLogin(),
    ScanQR.id:(c)=>ScanQR(),
  };
}
