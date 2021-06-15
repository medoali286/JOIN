import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:join/Model/user.dart';
import 'package:join/Provider/home_page_provider.dart';
import 'package:join/Services/auth.dart';
import 'package:join/Services/uesr_service.dart';
import 'package:join/UI/CustomWidget/login_button.dart';
import 'package:join/UI/CustomWidget/text_field.dart';
import 'package:join/UI/Screens/login_screen.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:provider/provider.dart';

import '../../constans.dart';

class SignUpScreen extends StatelessWidget {
  static String id = "SignUpScreen";
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _globalKeyPass = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final List<String> gender = ['male', 'female'];
  Auth _auth = Auth();
  UserService _userService = UserService();
  @override
  Widget build(BuildContext context) {
    String firstName;
    String lastName;
    String age;
    String gender;
    String email;
    String password = "";
    String confirmPassword;

// TextEditingController passwordCont=TextEditingController();
//     TextEditingController ConfPasswordCont=TextEditingController();

    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
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
              padding: EdgeInsets.zero,
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
                  height: 20,
                ),
                CustomTextField(
                  validate: (value) {
                    if (value.isEmpty) {
                      return "first name empty!";
                    }
                  },
                  onClick: (value) {
                    firstName = value;
                  },
                  hint: 'First Name',
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
                      return "last name empty!";
                    }
                  },
                  onClick: (value) {
                    lastName = value;
                  },
                  hint: 'Last Name',
                  cursorColor: Colors.white,
                  fillColor: KTextFieldFillColor,
                  hintTextColor: KTextFieldTextColor,
                  topLeftBorderRadius: 0,
                  topRightBorderRadius: 0,
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
                      return "age empty!";
                    } else if (10 > int.parse(value, onError: (d) {}) ||
                        int.parse(value, onError: (d) {}) > 80) {
                      return 'enter correct age';
                    }
                  },
                  onClick: (value) {
                    age = value;
                  },
                  hint: 'Age',
                  cursorColor: Colors.white,
                  fillColor: KTextFieldFillColor,
                  hintTextColor: KTextFieldTextColor,
                  topLeftBorderRadius: 0,
                  topRightBorderRadius: 0,
                  bottomRightBorderRadius: 0,
                  bottomLeftBorderRadius: 0,
                  obscureText: false,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  decoration: BoxDecoration(
                    color: KTextFieldFillColor,
                  ),
                  child: Center(
                    child: DropdownButtonFormField(
                      items: [
                        DropdownMenuItem(
                          child: Text(
                            "male",
                            style: TextStyle(color: KTextFieldTextColor),
                          ),
                          value: "male",
                        ),
                        DropdownMenuItem(
                          child: Text(
                            "female",
                            style: TextStyle(color: KTextFieldTextColor),
                          ),
                          value: "female",
                        ),
                      ],
                      dropdownColor: Colors.white,
                      iconEnabledColor: KTextFieldTextColor,
                      decoration: InputDecoration.collapsed(hintText: ""),
                      onChanged: (value) {},
                      onSaved: (value) {
                        gender = value;
                      },
                      value: "male",
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
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
                  topLeftBorderRadius: 0,
                  topRightBorderRadius: 0,
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
                    } else if (value.length < 6) {
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
                  obscureText:
                      Provider.of<ProviderHomePage>(context).passwordIsObscure,
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.visibility,
                      color: Colors.teal,
                    ),
                    onPressed: () {
                      Provider.of<ProviderHomePage>(context, listen: false)
                          .changeSignUpPasswordIsObscure();
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),

                // Form(
                //   key: _globalKeyPass,
                //   child: CustomTextField(
                //         validate: (value) {
                //           if (password != value) {
                //             return "password not match!";
                //           }
                //         },
                //         hint: 'Confirm Password',
                //         cursorColor: Colors.white,
                //         fillColor: KTextFieldFillColor,
                //         hintTextColor: KTextFieldTextColor,
                //         topLeftBorderRadius: 0,
                //         topRightBorderRadius: 0,
                //         bottomRightBorderRadius: 0,
                //         bottomLeftBorderRadius: 0,
                //         obscureText: Provider.of<ProviderHomePage>(context)
                //             .passwordIsObscure,
                //       ),
                //
                // ),

                // SizedBox(
                //   height: 40,
                // ),

                LoginButton(
                  text: "SIGN UP",
                  onPressed: () async {
                    final modHud =
                        Provider.of<ProviderHomePage>(context, listen: false);

                    modHud.changeIsLoading(true);

                    if (_globalKey.currentState.validate()) {
                      _globalKey.currentState.save();
                      try {
                        final authResult = await _auth
                            .signUp(
                                email: email.toString().trim(), password: password.toString().trim())
                            .then((value) {
                          modHud.changeIsLoading(false);
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Sign up Success")));
                          User _user = User(
                              firstName: firstName,
                              lastName: lastName,
                              gender: gender,
                              email: email,
                              age: age,
                              password: password);
                          _userService.addUser(_user, value.user.uid);
                          Navigator.of(context).pushNamed(LoginScreen.id);
                        });
                      } catch (e) {
                        print(e.message);
                        modHud.changeIsLoading(false);
                        ScaffoldMessenger.of(context)
                            .showSnackBar(SnackBar(content: Text(e.message)));
                      }
                    }
                    modHud.changeIsLoading(false);
                  },
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
