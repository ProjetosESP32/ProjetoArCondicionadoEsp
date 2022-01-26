import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:splash_ifmt/modules/login/login_controller.dart';
import 'package:splash_ifmt/shared/Components/button_widget.dart';
import 'package:splash_ifmt/shared/Components/input_password.dart';

import 'package:splash_ifmt/shared/app_colors.dart';
import 'package:splash_ifmt/shared/app_images.dart';

import 'package:splash_ifmt/shared/app_text_styles.dart';

final controller = Modular.get<LoginController>();

class NovaSenha extends StatelessWidget {
  NovaSenha({Key? key}) : super(key: key);

  final senhaInputTextController = TextEditingController();
  final senha2InputTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Image.asset(
            AppImages.logoApp,
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          backgroundColor: AppColors.background,
          elevation: 0,
        ),
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColors.background,
        body: SafeArea(
          child: Observer(builder: (context) {
            return ListView(
              children: [
                Padding(
                    padding: EdgeInsets.all(40.0),
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Text("Nova Senha",
                                  style: TextStyles.titleHome,
                                  textAlign: TextAlign.left),
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
                            titulo: "Senha",
                            errorText: controller.validateEmail,
                            onChanged: (value) {
                              controller.setEmail(value);
                            },
                            controller: senhaInputTextController,
                            passwordVisible: controller.isVisible,
                          ),
                          Padding(
                            padding: EdgeInsets.all(15.0),
                          ),
                          InputPasswordWidget(
                            titulo: "Senha",
                            errorText: controller.validateEmail,
                            onChanged: (value) {
                              controller.setEmail(value);
                            },
                            passwordVisible: controller.isVisible,
                            controller: senhaInputTextController,
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
                    )),
              ],
            );
          }),
        ),
      ),
    );
  }
}
