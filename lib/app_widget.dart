import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(411.4, 683.4),
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Beyond',
        theme: ThemeData(
            fontFamily: 'OpenSans',
            primarySwatch: Colors.blue,
            canvasColor: Colors.transparent),
        initialRoute: '/splashPage',
      ).modular(),
    );
  }
}
