import 'package:flutter/material.dart';
import 'package:splash_ifmt/shared/app_colors.dart';

import '../app_text_styles.dart';

class ButtonWhite extends StatelessWidget {
  const ButtonWhite({Key? key, required this.titulo, this.onPressed})
      : super(key: key);
  final String titulo;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  blurRadius: 4,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: TextButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                backgroundColor:
                    MaterialStateProperty.all<Color>(AppColors.secondary),
                foregroundColor:
                    MaterialStateProperty.all<Color>(AppColors.secondary),
              ),
              onPressed: onPressed,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 0.0),
                child: Text(
                  this.titulo,
                  style: TextStyles.buttonW,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
