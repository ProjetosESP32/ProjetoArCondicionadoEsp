import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:splash_ifmt/shared/app_images.dart';

import '../../shared/app_text_styles.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  int count = 1;

  @override
  void initState() {
    super.initState();

    Future.delayed(
      const Duration(seconds: 2),
      () async {
        setState(() {
          count = 1;
        });
        await Future.delayed(Duration(seconds: 2));

        setState(() {
          count = 2;
        });
        await Future.delayed(Duration(seconds: 2));
        FirebaseAuth.instance.authStateChanges().listen((user) {
          if (user != null) {
            Modular.to.navigate('/home');
          } else {
            Modular.to.navigate('/login');
            print("login");
          }
        });
      },
    );
  }

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
    // controller.currentUser();
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.all(40.0),
          child: count == 1 ? _splash() : _splash2(),
        ),
      ),
    );
  }
}
