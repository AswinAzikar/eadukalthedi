import 'package:flutter/material.dart';

class AuthScreenController with ChangeNotifier {
  // bool value for to check if log in
  bool isLogin = false;

// contionusly changes the value of isLogin bool
  isLoginPage() {
    isLogin = !isLogin;
    notifyListeners();
  }
}
