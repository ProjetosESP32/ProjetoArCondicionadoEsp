import 'package:flutter/material.dart';
import 'package:splash_ifmt/shared/app_colors.dart';

import 'package:splash_ifmt/shared/app_images.dart';
import 'package:splash_ifmt/shared/auth/auth_controller.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authController = AuthController();
    authController.currentUser(context);
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(40.0),
            child: Stack(
              children: [
                Center(
                  child: Image.asset(
                    AppImages.logoIF,
                    scale: 1.8,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
