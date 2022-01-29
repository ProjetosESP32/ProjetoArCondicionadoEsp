import 'dart:math';
import 'dart:math';
import 'package:mobx/mobx.dart';
import 'package:splash_ifmt/data/models/controle/controle_model.dart';
import 'package:splash_ifmt/data/models/sala/sala_model.dart';

import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:intl/intl.dart';
part 'agenda_controller.g.dart';

class AgendaController = _AgendaControllerBase with _$AgendaController;

abstract class _AgendaControllerBase with Store {
  @observable
  List<SalaModel> dataSource = [];

  @action
  Future<void> initialize() async {
    setDate(DateTime.now().toString());
  }

  @action
  void getData(int value) {
    Random random = new Random();

    dataSource.clear();
    for (var i = 0; i < value; ++i) {
      dataSource.add(SalaModel(
          bloco: 'B$i',
          sala: 'Sala $i',
          hora: '0$i:${i * 3}0'.length > 10 ? "$i:00" : '0$i:0$i',
          status: random.nextBool() ? "--" : 'Ativa'));
    }
  }

  @observable
  List<String> dropTable = ["Dia", "Semana", "Mes", "Ano"];

  @observable
  String currentDropTable = "Dia";

  @action
  void setDropDown(String value) {
    currentDropTable = value;
  }

  @observable
  String date = "";

  List<String> meses = [
    ' ',
    'Janeiro',
    'Fevereiro',
    'Março',
    'Abril',
    'Maio',
    'Junho',
    'Julho',
    'Agosto',
    'Setembro',
    'Outubro',
    'Novembro',
    'Dezembro'
  ];

  @action
  void setButtonArrow(int value) {
    if (currentDropTable == "Dia") {
      dia = (int.parse(dia) + value).toString();
    }
    if (currentDropTable == "Mes") {
      mes = (int.parse(mes) + value).toString();
    }
    if (currentDropTable == "Semana") {
      dia = (int.parse(dia) + value * 7).toString();
    }
    if (currentDropTable == "Ano") {
      ano = (int.parse(ano) + value).toString();
    }
    if (int.parse(dia) < 1) {
      mes = (int.parse(mes) + (-1)).toString();
      print("mes" + mes);
      switch (mes) {
        //mes 30
        case "1":
        case "4":
        case "6":
        case "9":
        case "11":
          dia = "30";
          break;
        //mes fev
        case "2":
          dia = "29";
          break;
        default:
          dia = "31";
      }
    }
    if (int.parse(mes) < 1) {
      ano = (int.parse(ano) + (-1)).toString();
      mes = "12";
      switch (mes) {
        //mes 30
        case "1":
        case "4":
        case "6":
        case "9":
        case "11":
          dia = "30";
          break;
        //mes fev
        case "2":
          dia = "29";
          break;
        default:
          dia = "31";
      }
    }

    switch (mes) {
      //mes 30
      case "1":
      case "4":
      case "6":
      case "9":
      case "11":
        if (int.parse(dia) > 30) {
          mes = (int.parse(mes) + 1).toString();
          dia = "01";
        }
        break;
      //mes fev
      case "2":
        if (int.parse(dia) > 29) {
          mes = (int.parse(mes) + 1).toString();
          dia = "01";
        }
        break;
      default:
        if (int.parse(dia) > 31) {
          mes = (int.parse(mes) + 1).toString();
          dia = "01";
        }
    }
    if (int.parse(mes) > 12) {
      ano = (int.parse(ano) + 1).toString();
      mes = "01";
      dia = "01";
    }
    date = dia + " " + meses[int.parse(mes)] + " " + ano;
    getData(int.parse(mes) + int.parse(dia));
  }

  @observable
  String dia = "";

  @observable
  String mes = "";

  @observable
  String ano = "";

  @action
  void setDate(String value) {
    print("!date \n\n\n\n\n\n\n\n\n\n\n" + value.toString());

    ano = value.substring(0, 4);
    print("!ano" + ano.toString());

    print("!ano" + value.toString());
    mes = value.substring(5, 7);
    print("mes " + mes.toString());

    dia = value.substring(8, 10);
    print("dia " + dia.toString());
    date = dia + " " + meses[int.parse(mes)] + " " + ano;
    print("date " + date.toString());
    getData(int.parse(mes) + int.parse(dia));
  }
}
