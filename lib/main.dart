// @dart=2.9

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:join/UI/Screens/Home.dart';
import 'package:join/UI/Screens/login_screen.dart';
import 'package:join/UI/Screens/profile.dart';

import 'package:join/UI/Screens/splash_screen_login.dart';
import 'package:join/UI/routes.dart';

import 'package:flutter/services.dart';
import 'package:join/provider_list.dart';
import 'package:provider/provider.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarBrightness: Brightness.light,
  ));

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: mainProviderList(context),
      child: MaterialApp(
        initialRoute: LoginScreen.id,
        routes: routes(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
