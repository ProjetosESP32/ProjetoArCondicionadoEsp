import 'package:flutter/material.dart';
import 'package:splash_ifmt/modules/splash/splash_page.dart';

import 'modules/login/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}
