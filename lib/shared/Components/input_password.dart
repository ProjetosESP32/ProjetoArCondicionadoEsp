// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:splash_ifmt/modules/login/login_controller.dart';
import 'package:splash_ifmt/shared/app_colors.dart';

final controllerLogin = Modular.get<LoginController>();

class InputPasswordWidget extends StatelessWidget {
  final String titulo;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final void Function(String value)? onChanged;
  final VoidCallback? onPressedEye;
  final String? Function()? errorText;
  final bool passwordVisible;

  const InputPasswordWidget({
    Key? key,
    required this.titulo,
    this.validator,
    this.controller,
    this.onChanged,
    this.errorText,
    required this.passwordVisible,
    this.onPressedEye,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left: 25.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(100),
          ),
          borderSide: BorderSide(color: AppColors.primary),
        ),

        labelText: titulo,
        labelStyle: TextStyle(
          color: AppColors.primary,
          fontSize: 20,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.stroke),
          borderRadius: BorderRadius.circular(100),
        ),
        suffixIcon: IconButton(
          icon: Icon(
            //Não está mudandoo
            !passwordVisible ? Icons.visibility : Icons.visibility_off,
            color: AppColors.stroke,
          ),
          onPressed: onPressedEye,
        ),

        //borderRadius: BorderRadius.circular(15),
      ),
      obscureText: passwordVisible,
      controller: controller,
      onChanged: onChanged,
    );
  }
}
