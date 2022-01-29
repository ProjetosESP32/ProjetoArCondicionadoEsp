import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:splash_ifmt/shared/app_colors.dart';

import 'package:splash_ifmt/shared/app_images.dart';
import 'package:splash_ifmt/shared/app_text_styles.dart';
import 'package:splash_ifmt/shared/auth/auth_controller.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  _splash2() {
    return Padding(
      padding: EdgeInsets.all(40.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            AppImages.logoApp,
          ),
          Text(
            "Projeto SASC",
            style: TextStyles.bold,
            textAlign: TextAlign.center,
          ),
          Text(
            "Desenvolvido Por",
            style: TextStyles.bold,
            textAlign: TextAlign.center,
          ),
          Image.asset(
            AppImages.bannerIF,
          ),
          Text(
            "Instituto Federal De Educação, Ciência E Tecnologia de Mato Grosso - Campus Cuiabá CEL.Octayde Jorge Da Silva",
            style: TextStyles.regular,
            textAlign: TextAlign.center,
          ),
          Text(
            "Apoio",
            style: TextStyles.bold,
            textAlign: TextAlign.center,
          ),
          Image.asset(
            AppImages.bannerHUJM,
          ),
          Text(
            "Hospital Universitário Júlio Muller",
            style: TextStyles.regular,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  _splash() {
    return Padding(
      padding: EdgeInsets.all(40.0),
      child: Center(
        child: Image.asset(
          AppImages.logoIF,
          scale: 1.8,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final controller = AuthController();
    controller.currentUser();
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.all(40.0),
          child: Observer(
            builder: (BuildContext context) {
              return controller.count == 1 ? _splash() : _splash2();
            },
          ),
        ),
      ),
    );
  }
}
