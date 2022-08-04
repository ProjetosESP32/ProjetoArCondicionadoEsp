import 'package:flutter/material.dart';

import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:splash_ifmt/modules/perfil/perfil_controller.dart';
import 'package:splash_ifmt/shared/Components/button_widget.dart';
import 'package:splash_ifmt/shared/Components/input_password.dart';
import 'package:splash_ifmt/shared/Components/input_text.dart';

import 'package:splash_ifmt/shared/app_colors.dart';
import 'package:splash_ifmt/shared/app_images.dart';
import 'package:splash_ifmt/shared/app_text_styles.dart';
import 'package:validatorless/validatorless.dart';

final controller = Modular.get<PerfilController>();
final formKey = GlobalKey<FormState>();
TextEditingController senhaNovaInputTextController = TextEditingController();
TextEditingController senhaInputTextController = TextEditingController();
TextEditingController emailInputTextController = TextEditingController();
TextEditingController userInputTextController = TextEditingController();
TextEditingController telefoneInputTextController = TextEditingController();
TextEditingController adminInputTextController = TextEditingController();

class PerfilPage extends StatelessWidget {
  _body() {
    switch (controller.currentPage) {
      case 0:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(
                        100.0) //                 <--- border radius here
                    ),
                color: AppColors.stroke,
              ),
              //color: AppColors.stroke,
              child: controller.user[0].photoUrl == null
                  ? Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Icon(Icons.person, color: Colors.white, size: 80),
                    )
                  : ClipOval(
                      child: Image.network(
                          controller.user[0].photoUrl.toString())),
            ),
            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                foregroundColor:
                    MaterialStateProperty.all<Color>(AppColors.stroke),
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Editar",
                    style: TextStyles.regular,
                    textAlign: TextAlign.center,
                  ),
                  Icon(Icons.edit, color: AppColors.stroke)
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            Text(
              "Contas Sociais",
              style: TextStyles.bold,
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
            ),
            Column(
              children: [
                Text(
                  "Vinculadas",
                  style: TextStyles.regular,
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: EdgeInsets.all(5.0),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // if you need this
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
              padding: EdgeInsets.all(10.0),
            ),
            Form(
              key: formKey,
              child: Column(
                children: [
                  Text(
                    "Vinculadas",
                    style: TextStyles.regular,
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
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
                      child: Image.asset(AppImages.logoApple),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
            ),
            Text(
              "Dados Do Usuário",
              style: TextStyles.bold,
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
            ),
            InputTextWidget(
              titulo: "Usuário",
              validator:
                  Validatorless.required("Este campo não deve ser vazio"),
              onChanged: (value) {},
              controller: userInputTextController,
              hintText: controller.user[0].name,
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            InputTextWidget(
              titulo: "Email",
              validator: Validatorless.multiple([
                Validatorless.email('Digite um email válido'),
                Validatorless.required('Este campo é obrigatório')
              ]),
              onChanged: (value) {
                controller.setEmail(value);
              },
              controller: emailInputTextController,
              hintText: controller.user[0].email,
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            InputTextWidget(
              titulo: "telefone",
              validator:
                  Validatorless.required("Este campo não deve ser vazio"),
              onChanged: (value) {},
              controller: telefoneInputTextController,
              hintText: controller.user[0].telefone,
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            InputTextWidget(
              titulo: "Admin",
              validator:
                  Validatorless.required("Este campo não deve ser vazio"),
              onChanged: (value) {},
              controller: adminInputTextController,
              hintText: controller.user[0].admin.toString(),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            ButtonWidget(
              titulo: "Salvar",
              onPressed: () async {
                //Chama uma função para validar os dados
                if (formKey.currentState!.validate()) {
                  await controller.verify();
                }
              },
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
            ),
            Text(
              "Sair da conta",
              style: TextStyles.bold,
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
            ),
            ButtonWidget(
              titulo: "Sair",
              onPressed: () {
                controller.controller.signOut();
              },
              color: Colors.red[400],
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
          ],
        );

      case 1:
        return Container();
      case 2:
        return Observer(builder: (context) {
          return Column(children: [
            Padding(
              padding: EdgeInsets.all(15.0),
            ),
            Text(
              "Atualizar a senha",
              style: TextStyles.bold,
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
            ),
            Observer(builder: (context) {
              return InputPasswordWidget(
                titulo: "Senha atual",
                errorText: controller.validateSenha,
                onChanged: (value) {
                  controller.setSenha(value);
                },
                controller: senhaInputTextController,
                passwordVisible: controller.isVisible,
                onPressedEye: controller.setIsVisible,
              );
            }),
            Padding(
              padding: EdgeInsets.all(15.0),
            ),
            InputPasswordWidget(
              titulo: "Senha nova",
              errorText: controller.validateSenha,
              onChanged: (value) {},
              controller: senhaNovaInputTextController,
              passwordVisible: controller.isVisible,
              onPressedEye: controller.setIsVisible,
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
            ),
            InputPasswordWidget(
              titulo: "Confirme a senha nova",
              errorText: controller.validateSenha,
              onChanged: (value) {},
              controller: senhaInputTextController,
              passwordVisible: controller.isVisible,
              onPressedEye: controller.setIsVisible,
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
            ),
            ButtonWidget(
              titulo: "Salvar",
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
              padding: EdgeInsets.all(10.0),
            ),
          ]);
        });
      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    controller.initialize();
    return Observer(builder: (context) {
      controller.currentPage;
      return controller.controller.loading
          ? Center(
              child: CircularProgressIndicator.adaptive(),
            )
          : Padding(
              padding: EdgeInsets.only(
                  left: 30.0, top: 30.0, right: 30.0, bottom: 30),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(
                          10.0) //                 <--- border radius here
                      ),
                  color: Colors.white,
                ),
                child: ListView(
                  shrinkWrap: true,
                  padding: EdgeInsets.all(16),
                  children: [
                    Container(
                      child: Observer(
                        builder: (context) {
                          controller.currentPage;
                          return Table(
                            border: TableBorder.all(
                              color: AppColors.background,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            columnWidths: const <int, TableColumnWidth>{
                              //0: IntrinsicColumnWidth(),
                              // 1: FlexColumnWidth(),
                              //2: FixedColumnWidth(64),
                            },
                            defaultVerticalAlignment:
                                TableCellVerticalAlignment.top,
                            children: [
                              TableRow(
                                children: <Widget>[
                                  TableCell(
                                    child: TextButton(
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                controller.currentPage == 0
                                                    ? AppColors.stroke
                                                    : Colors.white),
                                        foregroundColor:
                                            MaterialStateProperty.all<Color>(
                                                AppColors.stroke),
                                      ),
                                      onPressed: () {
                                        controller.setPage(0);
                                      },
                                      child: Text(
                                        "Dados",
                                        style: controller.currentPage == 0
                                            ? TextStyles.boldTableWhite
                                            : TextStyles.boldTable,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  TableCell(
                                    child: TextButton(
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                controller.currentPage == 1
                                                    ? AppColors.stroke
                                                    : Colors.white),
                                        foregroundColor:
                                            MaterialStateProperty.all<Color>(
                                                AppColors.stroke),
                                      ),
                                      onPressed: () {
                                        controller.setPage(1);
                                      },
                                      child: Text(
                                        "Salas",
                                        style: controller.currentPage == 1
                                            ? TextStyles.boldTableWhite
                                            : TextStyles.boldTable,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  TableCell(
                                    child: TextButton(
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                controller.currentPage == 2
                                                    ? AppColors.stroke
                                                    : Colors.white),
                                        foregroundColor:
                                            MaterialStateProperty.all<Color>(
                                                AppColors.stroke),
                                      ),
                                      onPressed: () {
                                        controller.setPage(2);
                                      },
                                      child: Text(
                                        "Senha",
                                        style: controller.currentPage == 2
                                            ? TextStyles.boldTableWhite
                                            : TextStyles.boldTable,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    _body()
                  ],
                ),
              ),
            );
    });
  }
}
