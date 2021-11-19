import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:splash_ifmt/modules/login/login_page.dart';

class AuthController {
  Future<void> currentUser(BuildContext context) async {
    await Future.delayed(Duration(seconds: 4));
    Modular.to.pushNamed("/login");
  }
}
