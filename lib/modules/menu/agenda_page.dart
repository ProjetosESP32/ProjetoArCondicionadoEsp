import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:splash_ifmt/shared/Components/button_white.dart';
import 'package:splash_ifmt/shared/app_colors.dart';
import 'package:splash_ifmt/shared/app_text_styles.dart';

class AgendaPage extends StatelessWidget {
  const AgendaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30.0, top: 30.0, right: 30.0, bottom: 30),
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
              "Dezembro 22, 2021",
              style: TextStyles.bold,
              textAlign: TextAlign.left,
            ),

            Padding(
              padding: EdgeInsets.all(15.0),
            ),

            //-----Linha de Botões
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 50,
                  width: 50,
                  child: TextButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          AppColors.background),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(AppColors.stroke),
                    ),
                    onPressed: () {},
                    child: Icon(FontAwesomeIcons.arrowLeft, size: 30),
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: 50,
                  child: TextButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          AppColors.background),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(AppColors.stroke),
                    ),
                    onPressed: () {},
                    child: Icon(FontAwesomeIcons.arrowRight, size: 30),
                  ),
                ),
                SizedBox(
                  height: 50,
                  //width: 50,
                  child: TextButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          AppColors.background),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(AppColors.stroke),
                    ),
                    onPressed: () {},
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        //Aqui é um DropDown
                        Text(
                          "Dia        ",
                          style: TextStyles.bold,
                          textAlign: TextAlign.left,
                        ),
                        Icon(FontAwesomeIcons.angleDown, size: 20),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: 50,
                  child: TextButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          AppColors.background),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(AppColors.stroke),
                    ),
                    onPressed: () {},
                    child: Icon(FontAwesomeIcons.calendar, size: 30),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
            ),

            //-----Tabela
            Column(
              children: [
                //-----Titulo
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Salas",
                      style: TextStyles.bold,
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      "001",
                      style: TextStyles.bold,
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),

                ListTile(
                  leading: Icon(FontAwesomeIcons.minusCircle,
                      size: 30, color: AppColors.stroke),
                  title: Text(
                    "Bloco A",
                    style: TextStyles.table,
                    textAlign: TextAlign.left,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
