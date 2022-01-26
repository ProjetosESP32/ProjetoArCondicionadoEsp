import 'package:flutter/material.dart';
import 'package:splash_ifmt/data/models/login_model.dart';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  LoginModel model = LoginModel();
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

  Future<void> verify() async {
    errorMessage = true;

    if (validateSenha() == null && validateEmail() == null) {
      print("pode seguir a pagina");
    } else {
      throw ("err");
    }
  }
}
