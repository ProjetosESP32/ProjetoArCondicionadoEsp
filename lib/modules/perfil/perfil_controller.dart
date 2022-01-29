import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:splash_ifmt/data/models/controle/controle_model.dart';
import 'package:splash_ifmt/data/models/sala/sala_model.dart';
import 'package:splash_ifmt/data/models/user/user_model.dart';
import 'package:splash_ifmt/modules/home/home_controller.dart';

part 'perfil_controller.g.dart';

class PerfilController = _PerfilControllerBase with _$PerfilController;

abstract class _PerfilControllerBase with Store {
  @observable
  int currentPage = 0;

  @action
  void initialize() {
    getUser();
  }

  @action
  void setPage(int value) {
    currentPage = value;
  }

  @observable
  HomeController controller = Modular.get<HomeController>();

  @observable
  List<UserModel> user = [];

  @action
  void getUser() {
    user.clear();
    controller.user.forEach((UserModel value) => user.add(value));
    name = user[0].name;
    email = user[0].email;
    senha = user[0].senha;
    telefone = user[0].telefone!;
    admin = user[0].admin;
    print("user: " + name);
  }

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

  @observable
  String name = "";

  @observable
  String telefone = "";

  @observable
  bool admin = true;

  @action
  void setCheckBox() {
    checkBox = !checkBox;
  }

  @action
  void setIsVisible() {
    isVisible = !isVisible;
    print("aqui");
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
    // errorMessage = true;

    // if (validateSenha() == null && validateEmail() == null) {
    //   print("pode seguir a pagina");
    // } else {
    //   throw ("err");
    // }
  }
}
