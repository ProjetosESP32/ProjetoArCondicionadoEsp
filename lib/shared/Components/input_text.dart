// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:splash_ifmt/shared/app_colors.dart';

class InputTextWidget extends StatelessWidget {
  final String titulo;
  final String? hintText;
  final bool senha;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final void Function(String value)? onChanged;
  final String? Function() errorText;

  const InputTextWidget({
    Key? key,
    this.senha = false,
    required this.titulo,
    this.validator,
    this.controller,
    this.onChanged,
    required this.errorText,
    this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        errorText: errorText == "" ? null : errorText(),
        contentPadding: EdgeInsets.only(left: 25.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(100)),
          borderSide: BorderSide(color: AppColors.primary),
        ),
        hintText: hintText,
        labelText: this.titulo,
        labelStyle: TextStyle(
          color: AppColors.primary,
          fontSize: 20,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.stroke),
          borderRadius: BorderRadius.circular(100),
        ),

        //borderRadius: BorderRadius.circular(15),
      ),
      obscureText: this.senha,
      controller: controller,
      onChanged: onChanged,
    );
  }
}
