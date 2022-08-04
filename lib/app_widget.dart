import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:asuka/asuka.dart' as asuka;

class AppWidget extends StatelessWidget {
  // @override
  // Widget build(BuildContext context) {
  //   return ScreenUtilInit(
  //     designSize: Size(411.4, 683.4),
  //     builder: () =>  MaterialApp.router(

  //     title: "IF",
  //     //builder: asuka.builder,
  //     theme: AppConfigUI.theme,
  //     routeInformationParser: Modular.routeInformationParser,
  //     routerDelegate: Modular.routerDelegate,
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "IF",
      builder: asuka.builder,
      //  theme: AppConfigUI.theme,
      debugShowCheckedModeBanner: false,
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }
}
