import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:splash_ifmt/shared/Components/button_white.dart';
import 'package:splash_ifmt/shared/app_colors.dart';
import 'package:splash_ifmt/shared/app_text_styles.dart';

class SalasPage extends StatelessWidget {
  const SalasPage({Key? key}) : super(key: key);

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
            //-----Linha da header
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Sala",
                  style: TextStyles.bold,
                  textAlign: TextAlign.left,
                ),
                Text(
                  "|",
                  style: TextStyles.bold,
                  textAlign: TextAlign.left,
                ),
                Text(
                  "Bloco",
                  style: TextStyles.bold,
                  textAlign: TextAlign.left,
                ),
                Text(
                  "|",
                  style: TextStyles.bold,
                  textAlign: TextAlign.left,
                ),
                Text(
                  "Proximo",
                  style: TextStyles.bold,
                  textAlign: TextAlign.left,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
            ),

            //-----Tabela
            Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Sala 01",
                      style: TextStyles.regular,
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      "B1",
                      style: TextStyles.regular,
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      "13/01",
                      style: TextStyles.regular,
                      textAlign: TextAlign.left,
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
                    Text(
                      "Sala 01",
                      style: TextStyles.regular,
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      "B1",
                      style: TextStyles.regular,
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      "13/01",
                      style: TextStyles.regular,
                      textAlign: TextAlign.left,
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
                    Text(
                      "Sala 01",
                      style: TextStyles.regular,
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      "B1",
                      style: TextStyles.regular,
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      "13/01",
                      style: TextStyles.regular,
                      textAlign: TextAlign.left,
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
                    Text(
                      "Sala 01",
                      style: TextStyles.regular,
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      "B1",
                      style: TextStyles.regular,
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      "13/01",
                      style: TextStyles.regular,
                      textAlign: TextAlign.left,
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
                    Text(
                      "Sala 01",
                      style: TextStyles.regular,
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      "B1",
                      style: TextStyles.regular,
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      "13/01",
                      style: TextStyles.regular,
                      textAlign: TextAlign.left,
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
                    Text(
                      "Sala 01",
                      style: TextStyles.regular,
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      "B1",
                      style: TextStyles.regular,
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      "13/01",
                      style: TextStyles.regular,
                      textAlign: TextAlign.left,
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
                    Text(
                      "Sala 01",
                      style: TextStyles.regular,
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      "B1",
                      style: TextStyles.regular,
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      "13/01",
                      style: TextStyles.regular,
                      textAlign: TextAlign.left,
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
                    Text(
                      "Sala 01",
                      style: TextStyles.regular,
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      "B1",
                      style: TextStyles.regular,
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      "13/01",
                      style: TextStyles.regular,
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
