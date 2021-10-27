import 'package:flutter/material.dart';
import 'package:splash_ifmt/Components/button_widget.dart';
import 'package:splash_ifmt/Components/input_text.dart';
import 'package:splash_ifmt/shared/app_text_styles.dart';

class NovaSenha extends StatelessWidget {
  const NovaSenha({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Text("Nova Senha",
                  style: TextStyles.titleHome, textAlign: TextAlign.left),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
          ),
          Text(
            "Por favor, preencha os campos abaixo com a nova senha.",
            style: TextStyles.regular,
            textAlign: TextAlign.justify,
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
          ),
          InputTextWidget(titulo: "Nova Senha", senha: true),
          Padding(
            padding: EdgeInsets.all(15.0),
          ),
          InputTextWidget(titulo: "Repita a Senha", senha: true),
          Padding(
            padding: EdgeInsets.all(15.0),
          ),
          ButtonWidget(titulo: "Confirmar"),
          Padding(
            padding: EdgeInsets.all(30.0),
          ),
        ],
      ),
    );
  }
}
