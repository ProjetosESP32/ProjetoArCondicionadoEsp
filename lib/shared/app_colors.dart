import 'package:flutter/material.dart';

//Adicionando cores -->
//Você deve passar o valor no seguinte formato:
//0xFF + valor hexadecimal, por exemplo, 0xFF7D79D0

class AppColors {
  //To conseguindo ver com essa cor não 0xFF5D99C6
  static final primary = Color.fromARGB(255, 24, 64, 94); //usando
  static final secondary = Color(0xFFFFFFFF); //usando
  static final grey = Color(0xFF585666);
  static final delete = Color(0xFFFF8484);
  static final heading = Color(0xFF585666); //cinza == secondary
  static final body = Color(0xFF706E7A);
  static final stroke = Color.fromARGB(255, 24, 64, 94); //usando
  static final shape = Color(0xFFFAFAFC);
  static final background = Color(0xFFF0F0F0); //usando
  static final input = Color(0xFFF7F7F7); //usando
}
