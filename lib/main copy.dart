import 'package:flutter/material.dart';
import 'package:splash_ifmt/modules/login/login_page.dart';
import 'package:splash_ifmt/shared/app_colors.dart';
import 'package:splash_ifmt/shared/app_images.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //Eu n lembro o pq fiz scaffold dentro scaffold depois arrumar
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Image.asset(
            AppImages.logoApp,
          ),
          backgroundColor: AppColors.background,
          elevation: 0,
        ),
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColors.background,
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(40.0),
              child: LoginPage(),
            ),
          ],
        ),
      ),
    );
  }
}
