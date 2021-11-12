import 'package:flutter/material.dart';
import 'package:splash_ifmt/data/models/login_model.dart';

class LoginController {
  final formKey = GlobalKey<FormState>();
  LoginModel model = LoginModel();
  //Caso a String esteja vazia ela retorna ao campo um texto em vermelho "O nome não pode ser vazio"
  String? validateNome(String? value) =>
      value?.isEmpty ?? true ? "O nome não pode ser vazio" : null;
  String? validatePassword(String? value) =>
      value?.isEmpty ?? true ? "A senha não pode ser vazia" : null;
  String? validatePassword2(String? value) {
    if (value!.length == 0) {
      return "A senha não pode ser vazia";
    } else if (value != model.senha) {
      return "As senha não podem ser diferentes";
    } else {
      return null;
    }
  }

  String? validateEmail(String? value) {
    RegExp regExp = new RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    if (value!.length == 0) {
      return "Informe o Email";
    } else if (!regExp.hasMatch(value)) {
      return "Email inválido";
    } else {
      return null;
    }
  }

  void onChange({
    String? senha,
    String? email,
    String? nome,
  }) {
    model = model.copyWith(senha: senha, email: email, nome: nome);
  }

//É chamada depois de cadastrar se o form estiver ok

//Verifica se o Form esta ok e chama a função savePessoa
  Future<void> verify() async {
    print(model.senha);
    final form = formKey.currentState;
    if (form!.validate()) {
      print("ok");
      //Form ok

    } else {
      //Avisa que tem erro
      throw ("err");
    }
  }
}
