import 'dart:developer';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:splash_ifmt/data/models/user/user_model.dart';
import 'package:splash_ifmt/data/repository/user/user_repository.dart';

import '../../data/service/auth/auth_service.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  int selectedIndex = 0;

  @action
  void increase(int value) {
    selectedIndex = value;
  }

  @observable
  List<UserModel> user = [];

  @action
  Future<void> getUser() async {
    user.addAll(await UserRepository.getUser());
    print("Chamou usuario no home");
  }

  final controller = Modular.get<AuthService>();
  @action
  Future<void> signOut() async {
    try {
      await controller.signOut();

      print("a");
    } catch (e, s) {
      log('Error ao realizar login, error: $e, stack: $s');
    }
  }
}
