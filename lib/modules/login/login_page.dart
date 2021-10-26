import 'package:flutter/material.dart';
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
                    TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 25.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                          borderSide: BorderSide(color: AppColors.primary),
                        ),

                        labelText: "Email",
                        labelStyle: TextStyle(
                          color: AppColors.primary,
                          fontSize: 20,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.stroke),
                          borderRadius: BorderRadius.circular(100),
                        ),

                        //borderRadius: BorderRadius.circular(15),
                      ),
                      onChanged: (value) {
                        print(value);
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 25.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                          borderSide: BorderSide(color: AppColors.primary),
                        ),

                        labelText: "Senha",
                        labelStyle: TextStyle(
                          color: AppColors.primary,
                          fontSize: 20,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.stroke),
                          borderRadius: BorderRadius.circular(100),
                        ),

                        //borderRadius: BorderRadius.circular(15),
                      ),
                      obscureText: true,
                      onChanged: (value) {
                        print(value);
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(0.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        //Acho que está com algum erro aqui
                        shape: CircleBorder(),
                        visualDensity: VisualDensity(),
                        activeColor: AppColors.primary,
                        value: this.value,
                        onChanged: (value) {
                          setState(
                            () {
                              this.value = value!;
                              print(value);
                            },
                          );
                        },
                      ),
                      Text(
                        "Lembrar usuário",
                        style: TextStyles.regular,
                      )
                    ],
                  ),
                  Text(
                    "Esqueceu a senha",
                    style: TextStyles.regular,
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
              ),
              Text(
                "Ou",
                style: TextStyles.regular,
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(10), // if you need this
                      //side: BorderSide(
                      //color: Colors.grey.withOpacity(0.2),
                      //width: 1,
                      //width),
                    ),
                    elevation: 2,
                    child: Container(
                      width: 90,
                      height: 60,
                      child: Image.asset(AppImages.logoApple),
                    ),
                  ),
                  Card(
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
                  Card(
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
                ],
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
              ),
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                        ),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(AppColors.stroke),
                        foregroundColor: MaterialStateProperty.all<Color>(
                            AppColors.background),
                      ),
                      onPressed: () {},
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 7.0, horizontal: 0.0),
                        child: Text(
                          'Entrar',
                          style: TextStyles.button,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
