import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:splash_ifmt/modules/configuracao/config_controller.dart';

import 'package:splash_ifmt/shared/app_colors.dart';
import 'package:splash_ifmt/shared/app_text_styles.dart';

final controller = Modular.get<ConfigController>();

class ConfigPage extends StatelessWidget {
  const ConfigPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.initialize();
    print(controller.isConnected);
    return Observer(builder: (context) {
      if (controller.isConnected == false) {
        print("ta aqui");
        return Padding(
          padding:
              EdgeInsets.only(left: 30.0, top: 30.0, right: 30.0, bottom: 30),
          child: Container(
            child: CupertinoAlertDialog(
              title: Text("Se conecte a rede do Esp"),
              content: Text(
                  "\n Tenha certeza de na estar na rede certa antes de prosseguir! \n"),
              actions: [
                CupertinoDialogAction(
                    child: Text("ok"),
                    onPressed: () {
                      controller.setIsConneted();
                    }),
              ],
            ),
          ),
        );
      }
      return Padding(
        padding:
            EdgeInsets.only(left: 30.0, top: 30.0, right: 30.0, bottom: 30),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
                Radius.circular(10.0) //                 <--- border radius here
                ),
            color: Colors.white,
          ),
          child: ListView(
            padding: EdgeInsets.all(16),
            children: [
              Text(
                "Teste Controle Ar",
                style: TextStyles.bold,
                textAlign: TextAlign.left,
              ),
              Padding(
                padding: EdgeInsets.all(10),
              ),
              SizedBox(
                //height: 120,
                //width: 155,
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(AppColors.stroke),
                  ),
                  onPressed: () {
                    controller.setPower();
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(
                      Icons.power_settings_new_rounded,
                      size: 50,
                      color: Colors.red[700],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
              ),
              SizedBox(
                //height: 120,
                //width: 155,
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(AppColors.stroke),
                  ),
                  onPressed: () {
                    controller.setTemperatura(1);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Icon(
                      Icons.add,
                      size: 50,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
              ),
              SizedBox(
                //height: 120,
                //width: 155,
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(AppColors.stroke),
                  ),
                  onPressed: () {
                    controller.setTemperatura((-1));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(
                      Icons.remove,
                      size: 50,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
              ),
              SizedBox(
                //height: 200,
                //width: 155,
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(AppColors.stroke),
                  ),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Comandos",
                          style: TextStyles.bold,
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          controller.mensagem,
                          style: TextStyles.small,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
              ),
              SizedBox(
                //height: 200,
                //width: 155,
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(AppColors.stroke),
                  ),
                  onPressed: () {
                    controller.setIsConneted();
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Desconectar",
                          style: TextStyles.regular,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
              ),
            ],
          ),
        ),
      );
    });
  }
}
