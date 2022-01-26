import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:splash_ifmt/modules/login/login_controller.dart';
import 'package:splash_ifmt/modules/login/login_page.dart';

part 'auth_controller.g.dart';

class AuthController = _AuthControllerBase with _$AuthController;

final controller = Modular.get<LoginController>();

abstract class _AuthControllerBase with Store {
  Future<void> currentUser(BuildContext context) async {
    await Future.delayed(Duration(seconds: 4));
    if (controller.checkBox) {
      Modular.to.pushNamed("/home");
    } else {
      Modular.to.pushNamed("/home");
      // Modular.to.pushNamed("/login");
    }
  }
}
