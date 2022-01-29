import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/date_picker.dart';
import 'package:flutter_holo_date_picker/i18n/date_picker_i18n.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:splash_ifmt/modules/controle/controle_controller.dart';
import 'package:splash_ifmt/modules/menu/agenda_controller.dart';
import 'package:splash_ifmt/shared/Components/button_white.dart';
import 'package:splash_ifmt/shared/app_colors.dart';
import 'package:splash_ifmt/shared/app_text_styles.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:intl/intl.dart';

final controller = Modular.get<ControleController>();

class ControlePage extends StatelessWidget {
  const ControlePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.initialize();
    return Observer(builder: (context) {
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
                "Controle Ar",
                style: TextStyles.bold,
                textAlign: TextAlign.left,
              ),

              Padding(
                padding: EdgeInsets.all(10),
              ),

              //-----Linha de Botões
              Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 50,
                        width: 155,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            foregroundColor: MaterialStateProperty.all<Color>(
                                AppColors.stroke),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Nome: " + controller.controleInfos[0].sala,
                            style: TextStyles.small,
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: 155,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            foregroundColor: MaterialStateProperty.all<Color>(
                                AppColors.stroke),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Bloco: " + controller.controleInfos[0].bloco,
                            style: TextStyles.small,
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 50,
                        width: 155,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            foregroundColor: MaterialStateProperty.all<Color>(
                                AppColors.stroke),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Status: " + controller.controleInfos[0].status,
                            style: TextStyles.small,
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: 155,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            foregroundColor: MaterialStateProperty.all<Color>(
                                AppColors.stroke),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Humi.: " +
                                controller.controleInfos[0].humidade
                                    .toString() +
                                "%",
                            style: TextStyles.small,
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              Padding(
                padding: EdgeInsets.all(10),
              ),
              SizedBox(
                //height: 120,
                //width: 155,
                child: Observer(builder: (context) {
                  return ElevatedButton(
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
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Observer(builder: (context) {
                            controller.temperatura;
                            return Text(
                              controller.controleInfos[0].temperatura
                                      .toString() +
                                  " Cº",
                              style: TextStyles.titleHome,
                              textAlign: TextAlign.center,
                            );
                          }),
                          Text(
                            "Tem. Atual",
                            style: TextStyles.titleRegular,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
              Padding(
                padding: EdgeInsets.all(20),
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
                  onPressed: () {},
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
            ],
          ),
        ),
      );
    });
  }
}
