import 'package:flutter/material.dart';
import 'package:splash_ifmt/data/models/user/login/login_model.dart';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:splash_ifmt/data/models/user/user_model.dart';
import 'package:splash_ifmt/data/repository/user/user_repository.dart';

import '../../data/service/user/user_service.dart';
import '../../shared/constants/constants.dart';

part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  //Caso a String esteja vazia ela retorna ao campo um texto em vermelho "O nome não pode ser vazio"
  @observable
  bool errorMessage = false;

  @observable
  bool checkBox = false;

  @observable
  bool isVisible = true;

  @observable
  String email = "";

  @observable
  String senha = "";

  @action
  void setCheckBox() {
    checkBox = !checkBox;
  }

  @action
  void setIsVisible() {
    isVisible = !isVisible;
  }

  @action
  void setSenha(String value) {
    senha = value;
  }

  @action
  void setEmail(String value) {
    email = value;
  }

  @action
  String? validateEmail() {
    RegExp regExp = new RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    if (errorMessage) {
      if (email.length == 0) {
        return "Informe o Email";
      } else if (!regExp.hasMatch(email)) {
        return "Email inválido";
      } else {
        return null;
      }
    } else {
      return null;
    }
  }

  @action
  String? validateSenha() {
    if ((senha.isEmpty || senha == "") && errorMessage) {
      return "este campo é obrigatorio";
    }
    return null;
  }

  final _UserService = UserService(Dio());

  @action
  Future<void> verify() async {
    errorMessage = true;

    if (validateSenha() == null && validateEmail() == null) {
      print("pode seguir a pagina");
      try {
        print(UserModel(email: email, password: senha).toJson());
        var response = await _UserService.userLogin(
          'application/json',
          Constants.URL_SERVICE,
          UserModel(email: email, password: senha),
        );
        print(response);
        await UserRepository.saveUser(UserModel(
          admin: true,
          email: email,
          senha: senha,
          isSaved: checkBox,
          name: "Teste",
          telefone: "65 992328339",
        ));
        Modular.to.pushNamed("/home");
      } on DioError catch (e) {
        print(e);
      }
    } else {
      throw ("err");
    }
  }
}
