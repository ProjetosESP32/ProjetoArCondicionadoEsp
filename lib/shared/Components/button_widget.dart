import 'package:flutter/material.dart';
import 'package:splash_ifmt/shared/app_colors.dart';
import 'package:splash_ifmt/shared/app_text_styles.dart';

class ButtonWidget extends StatelessWidget {
  final String? titulo;
  final Icon? icon;
  final Color? color;
  final VoidCallback? onPressed;
  const ButtonWidget(
      {Key? key, this.titulo = "", this.onPressed, this.icon, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100.0),
                ),
              ),
              backgroundColor: MaterialStateProperty.all<Color>(
                  color == null ? AppColors.stroke : color!),
              foregroundColor:
                  MaterialStateProperty.all<Color>(AppColors.background),
            ),
            onPressed: onPressed,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 7.0, horizontal: 0.0),
              child: Text(
                titulo.toString(),
                style: TextStyles.button,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
