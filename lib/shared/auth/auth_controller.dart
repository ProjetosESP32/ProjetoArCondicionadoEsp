import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:splash_ifmt/data/repository/user/user_repository.dart';
import 'package:splash_ifmt/modules/login/login_controller.dart';
import 'package:splash_ifmt/modules/login/login_page.dart';

part 'auth_controller.g.dart';

class AuthController = _AuthControllerBase with _$AuthController;

abstract class _AuthControllerBase with Store {
  @action
  Future<void> currentUser() async {
    count = 1;
    await Future.delayed(Duration(seconds: 2));
    count = 2;
    await Future.delayed(Duration(seconds: 2));
    if (await UserRepository.isUserAuth()) {
      Modular.to.navigate("/home");
    } else {
      Modular.to.navigate("/login");
      // Modular.to.pushNamed("/login");
    }
  }

  @observable
  int count = 1;
}
