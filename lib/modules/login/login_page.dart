import 'package:flutter/material.dart';
import 'package:splash_ifmt/Components/button_widget.dart';
import 'package:splash_ifmt/Components/input_text.dart';
import 'package:splash_ifmt/shared/app_colors.dart';
import 'package:splash_ifmt/shared/app_images.dart';
import 'package:splash_ifmt/shared/app_text_styles.dart';

import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool value = false;
  final controller = LoginController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          AppImages.logoApp,
        ),
        backgroundColor: AppColors.background,
        elevation: 0,
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.background,
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(40.0),
          child: Column(
            children: [
              //-----Titulo

              Text(
                "Login",
                style: TextStyles.titleHome,
                textAlign: TextAlign.center,
              ),

              Padding(
                padding: EdgeInsets.all(15.0),
              ),

              Form(
                //key: controller.formKey,
                child: Column(
                  children: [
                    //Input Recebe String e Bool(opcional)
                    InputTextWidget(titulo: "Email"),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                    ),
                    InputTextWidget(titulo: "Senha", senha: true),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.all(5.0),
              ),

              //-----CheckedBox

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 22.0,
                        width: 22.0,
                        child: Checkbox(
                          shape: CircleBorder(),
                          activeColor: AppColors.primary,
                          value: this.value,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          onChanged: (value) {
                            setState(
                              () {
                                this.value = value!;
                                print(value);
                              },
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(2.0),
                      ),
                      Text(
                        "Lembrar usuário",
                        style: TextStyles.regular,
                        textAlign: TextAlign.left,
                      )
                    ],
                  ),
                  InkWell(
                    child: Text(
                      "Esqueceu a senha",
                      style: TextStyles.regular,
                    ),
                    onTap: () {
                      print("AHHHHH");
                    },
                    hoverColor: AppColors.stroke,
                  )
                ],
              ),

              Padding(
                padding: EdgeInsets.all(15.0),
              ),

              //-----Botão

              ButtonWidget(titulo: "Entrar"),

              Padding(
                padding: EdgeInsets.all(15.0),
              ),

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
                        borderRadius:
                            BorderRadius.circular(10), // if you need this
                      ),
                     
                      elevation: 2,
                      child: Container(
                        width: 90,
                        height: 60,
                        child: Image.asset(AppImages.logoApple),
                      ),
                    ),
                    onTap: () {
                      print("AHHHHH");
                    },
                  ),
                  InkWell(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // if you need this
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
                        borderRadius:
                            BorderRadius.circular(10), // if you need this
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
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
