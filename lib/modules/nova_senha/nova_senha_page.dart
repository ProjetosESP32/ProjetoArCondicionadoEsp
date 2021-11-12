import 'package:flutter/material.dart';
import 'package:splash_ifmt/modules/login/login_controller.dart';
import 'package:splash_ifmt/shared/Components/button_widget.dart';
import 'package:splash_ifmt/shared/Components/input_password.dart';
import 'package:splash_ifmt/shared/Components/input_text.dart';

import 'package:splash_ifmt/shared/app_text_styles.dart';

class NovaSenha extends StatelessWidget {
  NovaSenha({Key? key}) : super(key: key);
  final controller = LoginController();

  final senhaInputTextController = TextEditingController();
  final senha2InputTextController = TextEditingController();

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
          InputPasswordWidget(
            titulo: "Nova Senha",
            onChanged: (value) {
              controller.onChange(senha: value);
            },
            controller: senhaInputTextController,
            validator: controller.validatePassword,
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
          ),
          InputPasswordWidget(
            titulo: "Repita a Senha",
            onChanged: (value) {},
            validator: controller.validatePassword2,
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
          ),
          ButtonWidget(
            titulo: "Confirmar",
            onPressed: () async {
              //Chama uma função para validar os dados
              try {
                print("try");
                await controller.verify();
              } catch (err) {
                print("ERRP");
              }
            },
          ),
          Padding(
            padding: EdgeInsets.all(30.0),
          ),
        ],
      ),
    );
  }
}
