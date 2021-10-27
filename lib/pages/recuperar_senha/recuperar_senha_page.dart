import 'package:flutter/material.dart';
import 'package:splash_ifmt/Components/button_widget.dart';
import 'package:splash_ifmt/Components/input_text.dart';
import 'package:splash_ifmt/shared/app_text_styles.dart';

class RecuperarSenha extends StatelessWidget {
  const RecuperarSenha({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Text("Recuperar Senha",
                  style: TextStyles.titleHome, textAlign: TextAlign.left),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
          ),
          Text(
            "Por favor, insira o endereço de e-mail associado à sua conta e nós lhe enviaremos um link para redefinir sua senha.",
            style: TextStyles.regular,
            textAlign: TextAlign.justify,
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
          ),
          InputTextWidget(titulo: "Email"),
          Padding(
            padding: EdgeInsets.all(15.0),
          ),
          ButtonWidget(titulo: "Enviar"),
          Padding(
            padding: EdgeInsets.all(30.0),
          ),
        ],
      ),
    );
  }
}
