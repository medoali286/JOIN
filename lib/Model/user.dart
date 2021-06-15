import 'package:flutter/cupertino.dart';

class User {
  String firstName;
  String lastName;
  String age;
  String email;
  String password;
  String gender;

  User(
      {@required this.firstName,
      @required this.lastName,
      @required this.gender,
      @required this.email,
      @required this.age,
      this.password});
}
