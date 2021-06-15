import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProviderHomePage extends ChangeNotifier {
  bool isGroup = true;
  Widget widget = Stack();

  changeIsGroup(bool value) {
    isGroup = value;
    notifyListeners();
  }

  bool passwordIsObscure = true;

  changeSignUpPasswordIsObscure() {
    if (passwordIsObscure) {
      passwordIsObscure = false;
      notifyListeners();
    } else {
      passwordIsObscure = true;
      notifyListeners();
    }
  }

  bool isLoading = false;

  changeIsLoading(bool value) {
    isLoading = value;
    notifyListeners();
  }
}
