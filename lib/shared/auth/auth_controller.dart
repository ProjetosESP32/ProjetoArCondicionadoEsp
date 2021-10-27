import 'package:flutter/material.dart';
import 'package:splash_ifmt/pages/home/home.dart';

class AuthController {
  Future<void> currentUser(BuildContext context) async {
    await Future.delayed(Duration(seconds: 4));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute<void>(
        builder: (BuildContext context) => MyHomePage(title: "Home page"),
      ),
    );
  }
}
