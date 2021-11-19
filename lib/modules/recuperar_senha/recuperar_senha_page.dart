import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:splash_ifmt/modules/login/login_controller.dart';
import 'package:splash_ifmt/shared/Components/button_widget.dart';
import 'package:splash_ifmt/shared/Components/input_text.dart';
import 'package:splash_ifmt/shared/app_colors.dart';
import 'package:splash_ifmt/shared/app_images.dart';

import 'package:splash_ifmt/shared/app_text_styles.dart';

class RecuperarSenha extends StatelessWidget {
  RecuperarSenha({Key? key}) : super(key: key);

  final controller = LoginController();
  final emailInputTextController = TextEditingController();
  final senhaInputTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Image.asset(
            AppImages.logoApp,
          ),
          backgroundColor: AppColors.background,
          elevation: 0,
        ),
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColors.background,
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(40.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text("Recuperar Senha",
                            style: TextStyles.titleHome,
                            textAlign: TextAlign.left),
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
                    Form(
                      key: controller.formKey,
                      child: InputTextWidget(
                        titulo: "Email",
                        onChanged: (value) {
                          controller.onChange(email: value);
                        },
                        controller: emailInputTextController,
                        validator: controller.validateEmail,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15.0),
                    ),
                    ButtonWidget(
                      titulo: "Enviar",
                      onPressed: () async {
                        //Chama uma função para validar os dados
                        try {
                          print("try");
                          await controller.verify();
                          Modular.to.pushNamed("/newPassword");
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
