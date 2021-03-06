import 'package:flutter/material.dart';
import 'package:splash_ifmt/shared/Components/button_white.dart';
import 'package:splash_ifmt/shared/app_colors.dart';
import 'package:splash_ifmt/shared/app_text_styles.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: EdgeInsets.all(40.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "Status: ",
                        style: TextStyles.regular,
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        "Não conectado",
                        style: TextStyle(
                          color: AppColors.delete,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.left,
                      )
                    ],
                  ),
                  Text(
                    "Sala: ---",
                    style: TextStyles.regular,
                    textAlign: TextAlign.left,
                  )
                ],
              ),
              Padding(padding: EdgeInsets.all(20)),
              ButtonWhite(titulo: "Conectar na rede"),
              Padding(padding: EdgeInsets.all(20)),
              ButtonWhite(titulo: "Ler QR Code"),
              Padding(padding: EdgeInsets.all(20)),
              ButtonWhite(titulo: "Configurações"),
            ],
          ),
        ),
      ],
    );
  }
}
