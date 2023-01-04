import 'package:flutter/material.dart';
import 'package:login_app_/pages/loginPage.dart';
import 'package:login_app_/pages/signup_page.dart';
import 'package:login_app_/pages/welcomePage.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: const LoginForm(),
    theme: ThemeData(primaryColor: Colors.blue),
    routes: {
      'loginPage': (context) => LoginForm(),
      'signupPage': (context) => SignUp(),
      'welcomePage': (context) => welcomePage(),
    },
  ));
}
