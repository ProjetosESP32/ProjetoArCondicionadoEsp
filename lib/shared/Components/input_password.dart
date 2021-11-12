// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:splash_ifmt/shared/app_colors.dart';

class InputPasswordWidget extends StatefulWidget {
  final String titulo;

  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final void Function(String value)? onChanged;

  const InputPasswordWidget({
    Key? key,
    required this.titulo,
    this.validator,
    this.controller,
    this.onChanged,
  }) : super(key: key);

  @override
  State<InputPasswordWidget> createState() => _InputPasswordWidgetState();
}

class _InputPasswordWidgetState extends State<InputPasswordWidget> {
  bool _passwordVisible = true;
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

        labelText: this.widget.titulo,
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
              !_passwordVisible ? Icons.visibility : Icons.visibility_off,
              color: AppColors.stroke,
            ),
            onPressed: () {
              setState(() {
                _passwordVisible == true
                    ? _passwordVisible = false
                    : _passwordVisible = true;
              });
            }),

        //borderRadius: BorderRadius.circular(15),
      ),
      obscureText: _passwordVisible,
      controller: widget.controller,
      validator: widget.validator,
      onChanged: widget.onChanged,
    );
  }
}
