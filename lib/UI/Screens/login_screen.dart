import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:join/Provider/home_page_provider.dart';
import 'package:join/Services/auth.dart';
import 'package:join/UI/CustomWidget/login_button.dart';
import 'package:join/UI/CustomWidget/other_login.dart';
import 'package:join/UI/CustomWidget/text_field.dart';
import 'package:join/UI/Screens/Home.dart';
import 'package:join/UI/Screens/signup_screen.dart';
import 'package:join/UI/Screens/splach_screen.dart';
import 'package:join/constans.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  static String id = "LoginScreen";
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  Auth _auth = Auth();

  @override
  Widget build(BuildContext context) {
    String email;
    String password;
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
        key: _scaffoldKey,
        body: ModalProgressHUD(
          inAsyncCall: Provider.of<ProviderHomePage>(context).isLoading,
          color: Colors.teal[100],
          progressIndicator: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
          ),
          child: Form(
            key: _globalKey,
            child: Container(
              color: Colors.white,
              child: ListView(
                padding: EdgeInsets.only(top: 0),
                children: [
                  Stack(
                    children: [
                      Container(
                        height: h * .32,
                        width: w,
                        child: Image.asset(
                          "assets/imges/loginImage.jpg",
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      Positioned(
                          bottom: -90,
                          child: Container(
                            height: 140,
                            width: w,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(70))),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  CustomTextField(
                    validate: (value) {
                      if (value.isEmpty) {
                        return 'email is empty !';
                      } else if (!(value.contains(".com")) ||
                          !(value.contains('@'))) {
                        return 'email bad format';
                      }
                    },
                    onClick: (value) {
                      email = value;
                    },
                    hint: 'Email',
                    cursorColor: Colors.white,
                    fillColor: KTextFieldFillColor,
                    hintTextColor: KTextFieldTextColor,
                    topLeftBorderRadius: 20,
                    topRightBorderRadius: 20,
                    bottomRightBorderRadius: 0,
                    bottomLeftBorderRadius: 0,
                    obscureText: false,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomTextField(
                    validate: (value) {
                      if (value.isEmpty) {
                        return "password is empty !";
                      } else if (value.length < 5) {
                        return 'password more than 6';
                      }
                    },
                    onClick: (value) {
                      password = value;
                    },
                    hint: 'Password',
                    cursorColor: Colors.white,
                    fillColor: KTextFieldFillColor,
                    hintTextColor: KTextFieldTextColor,
                    topLeftBorderRadius: 0,
                    topRightBorderRadius: 0,
                    bottomRightBorderRadius: 0,
                    bottomLeftBorderRadius: 0,
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  LoginButton(
                      onPressed: () async {
                        final modHud = Provider.of<ProviderHomePage>(context,
                            listen: false);

                        modHud.changeIsLoading(true);

                        if (_globalKey.currentState.validate()) {
                          _globalKey.currentState.save();
                          try {
                            await _auth
                                .signIn(email: email.toString().trim(), password: password.toString().trim())
                                .then((value) {
                              print(value.user.uid);
                              modHud.changeIsLoading(false);
                              Navigator.of(context).pushNamedAndRemoveUntil(
                                  SplashScreen.id, (route) => false);
                            });
                          } catch (e) {
                            print(e.message);
                            modHud.changeIsLoading(false);
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text(e.message)));
                          }
                          print(password);
                          print(email);
                        }

                        modHud.changeIsLoading(false);
                      },
                      text: "LOG IN"),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "forget password?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.green[800],
                      fontSize: 16,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  LoginButton(
                    text: "SIGN UP",
                    onPressed: () {
                      Navigator.of(context).pushNamed(SignUpScreen.id);
                    },
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  OtherLogin(),
                ],
              ),
            ),
          ),
        ));
  }
}
