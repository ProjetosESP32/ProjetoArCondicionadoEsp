import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/date_picker.dart';
import 'package:flutter_holo_date_picker/i18n/date_picker_i18n.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:splash_ifmt/modules/menu/agenda_controller.dart';
import 'package:splash_ifmt/shared/Components/button_white.dart';
import 'package:splash_ifmt/shared/app_colors.dart';
import 'package:splash_ifmt/shared/app_text_styles.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:intl/intl.dart';

final controller = Modular.get<AgendaController>();

class AgendaPage extends StatelessWidget {
  const AgendaPage({Key? key}) : super(key: key);
  _tableRow() {
    return ListView.builder(
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      itemCount: controller.dataSource.length,
      itemBuilder: (context, index) {
        return Table(
          border: TableBorder.all(
            color: AppColors.background,
            borderRadius: BorderRadius.circular(1),
          ),
          columnWidths: const <int, TableColumnWidth>{
            //0: IntrinsicColumnWidth(),
            1: FlexColumnWidth(),
            //2: FixedColumnWidth(64),
          },
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: <TableRow>[
            TableRow(
              children: <Widget>[
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      controller.dataSource[index].sala,
                      style: TextStyles.regular,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: Text(
                    controller.dataSource[index].bloco,
                    style: TextStyles.regular,
                    textAlign: TextAlign.center,
                  ),
                ),
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: Text(
                    controller.dataSource[index].hora,
                    style: TextStyles.regular,
                    textAlign: TextAlign.center,
                  ),
                ),
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: Text(
                    controller.dataSource[index].status,
                    style: TextStyles.regular,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }

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
                controller.date.toString(),
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
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            AppColors.background),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(AppColors.stroke),
                      ),
                      onPressed: () {
                        controller.setButtonArrow((-1));
                      },
                      child: Icon(FontAwesomeIcons.arrowLeft, size: 30),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    //width: 50,
                    child: TextButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
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
                      child: Observer(builder: (context) {
                        return DropdownButton<String>(
                          value: controller.currentDropTable,
                          icon: Icon(Icons.arrow_drop_down,
                              color: AppColors.stroke),

                          alignment: AlignmentDirectional.bottomStart,
                          style: TextStyles.boldTable,
                          focusColor: AppColors.stroke,
                          elevation: 1,
                          iconEnabledColor: AppColors.stroke,
                          iconDisabledColor: AppColors.background,
                          dropdownColor: AppColors
                              .background, //ColorsApp.beyond.withOpacity(0.8),
                          isDense: false,
                          onChanged: (value) {
                            controller.setDropDown(value.toString());
                          },
                          borderRadius: BorderRadius.circular(10),
                          items: controller.dropTable.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        );
                      }),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: TextButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            AppColors.background),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(AppColors.stroke),
                      ),
                      onPressed: () {
                        controller.setButtonArrow(1);
                      },
                      child: Icon(FontAwesomeIcons.arrowRight, size: 30),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: TextButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            AppColors.background),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(AppColors.stroke),
                      ),
                      onPressed: () async {
                        var datePicked = await DatePicker.showSimpleDatePicker(
                          context,
                          textColor: AppColors.stroke,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2020),
                          lastDate: DateTime(2030),
                          dateFormat: "dd-MM-yyyy",
                          locale: DateTimePickerLocale.pt_br,
                          looping: true,
                          titleText: "Selecione a data de nascimento:",
                          confirmText: "confirmar",
                          cancelText: "cancelar",
                        );
                        controller.setDate(datePicked.toString());
                      },
                      child: Icon(FontAwesomeIcons.calendar, size: 30),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
              ),
              Container(
                child: Table(
                  border: TableBorder.all(
                    color: AppColors.background,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  columnWidths: const <int, TableColumnWidth>{
                    //0: IntrinsicColumnWidth(),
                    1: FlexColumnWidth(),
                    //2: FixedColumnWidth(64),
                  },
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  children: [
                    TableRow(
                      children: <Widget>[
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Text(
                              "Sala",
                              style: TextStyles.boldTable,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Text(
                            "Bloco",
                            style: TextStyles.boldTable,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Text(
                            "Hora",
                            style: TextStyles.boldTable,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Text(
                            "Status",
                            style: TextStyles.boldTable,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              _tableRow(),
              //-----Tabela
            ],
          ),
        ),
      );
    });
  }
}
