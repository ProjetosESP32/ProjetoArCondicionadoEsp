import 'package:asuka/snackbars/asuka_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:splash_ifmt/modules/login/login_controller.dart';
import 'package:splash_ifmt/modules/recuperar_senha/recuperar_senha_page.dart';
import 'package:splash_ifmt/shared/Components/button_widget.dart';
import 'package:splash_ifmt/shared/Components/input_password.dart';
import 'package:splash_ifmt/shared/Components/input_text.dart';

import 'package:splash_ifmt/shared/app_colors.dart';
import 'package:splash_ifmt/shared/app_images.dart';
import 'package:splash_ifmt/shared/app_text_styles.dart';
import 'package:validatorless/validatorless.dart';

final controller = Modular.get<LoginController>();
TextEditingController emailInputTextController = TextEditingController();
TextEditingController senhaInputTextController = TextEditingController();
final formKey = GlobalKey<FormState>();

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
        body: SafeArea(
          child: Observer(builder: (context) {
            return Padding(
              padding: EdgeInsets.all(40.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //-----Titulo
                  Text(
                    "Login",
                    style: TextStyles.titleHome,
                    textAlign: TextAlign.center,
                  ),

                  Form(
                    key: formKey,
                    child: Column(
                      children: [
                        //Input Recebe String e Bool(opcional)
                        InputTextWidget(
                          titulo: "Email",
                          controller: emailInputTextController,
                          validator: Validatorless.multiple([
                            Validatorless.email('Digite um email válido'),
                            Validatorless.required('Este campo é obrigatório')
                          ]),
                          onChanged: (value) {
                            controller.setEmail(value);
                          },
                        ),
                        Padding(
                          padding: EdgeInsets.all(15.0),
                        ),
                        InputPasswordWidget(
                          titulo: "Senha",
                          errorText: controller.validateSenha,
                          onChanged: (value) {
                            controller.setSenha(value);
                          },
                          controller: senhaInputTextController,
                          passwordVisible: controller.isVisible,
                          onPressedEye: controller.setIsVisible,
                        ),
                        Padding(
                          padding: EdgeInsets.all(15.0),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 18.0,
                                  width: 18.0,
                                  child: Checkbox(
                                    shape: CircleBorder(),
                                    activeColor: AppColors.primary,
                                    value: controller.checkBox,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    onChanged: (value) {
                                      controller.setCheckBox();
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(2.0),
                                ),
                                Text(
                                  "Lembrar usuário",
                                  style: TextStyles.small,
                                  textAlign: TextAlign.left,
                                )
                              ],
                            ),
                            InkWell(
                              child: Text(
                                "Esqueceu a senha",
                                style: TextStyles.small,
                              ),
                              onTap: () {
                                print("AHHHHH");
                                Modular.to.push(MaterialPageRoute(
                                    builder: (context) => RecuperarSenha()));
                              },
                              hoverColor: AppColors.stroke,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),

                  //-----CheckedBox

                  //-----Botão

                  ButtonWidget(
                    titulo: "Entrar",
                    onPressed: () async {
                      //Chama uma função para validar os dados
                      if (formKey.currentState!.validate()) {
                        FocusScope.of(context).requestFocus(FocusNode());
                        await controller.verify();
                      }
                    },
                  ),

                  Column(
                    children: [
                      Text(
                        "Ou",
                        style: TextStyles.regular,
                      ),

                      Padding(
                        padding: EdgeInsets.all(15.0),
                      ),

                      //-----Cards
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    10), // if you need this
                              ),
                              elevation: 2,
                              child: Container(
                                width: 90,
                                height: 60,
                                child: Image.asset(AppImages.logoApple),
                              ),
                            ),
                            onTap: () {},
                          ),
                          InkWell(
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    10), // if you need this
                              ),
                              elevation: 2,
                              child: Container(
                                width: 90,
                                height: 60,
                                child: Image.asset(AppImages.logoFacebook),
                              ),
                            ),
                            onTap: () {
                              print("AHHHHH");
                            },
                          ),
                          InkWell(
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    10), // if you need this
                              ),
                              elevation: 2,
                              child: Container(
                                width: 90,
                                height: 60,
                                child: Image.asset(AppImages.logoGoogle),
                              ),
                            ),
                            onTap: () {
                              print("AHHHHH");
                              controller.signIn();
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(15.0),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
