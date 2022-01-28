import 'package:flutter_modular/flutter_modular.dart';
import 'package:splash_ifmt/modules/home/home.dart';
import 'package:splash_ifmt/modules/login/login_controller.dart';
import 'package:splash_ifmt/modules/splash/splash_page.dart';
import 'package:splash_ifmt/shared/auth/auth_controller.dart';

import 'modules/home/home_controller.dart';
import 'modules/login/login_page.dart';
import 'modules/menu/agenda_controller.dart';
import 'modules/nova_senha/nova_senha_page.dart';
import 'modules/recuperar_senha/recuperar_senha_page.dart';

class AppModule extends Module {
  final List<Bind> binds = [
    Bind.lazySingleton((i) => AuthController()),
    Bind.lazySingleton((i) => LoginController()),
    Bind.lazySingleton((i) => HomeController()),
    Bind.lazySingleton((i) => AgendaController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/splashPage', child: (_, args) => SplashPage()),
    ChildRoute('/login', child: (_, args) => LoginPage()),
    ChildRoute('/forgot', child: (_, args) => RecuperarSenha()),
    ChildRoute('/newPassword', child: (_, args) => NovaSenha()),
    ChildRoute('/home', child: (_, args) => HomePage()),
  ];
}
