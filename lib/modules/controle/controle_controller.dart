import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:splash_ifmt/data/models/controle/controle_model.dart';
import 'package:splash_ifmt/data/models/sala/sala_model.dart';

import '../socket/socket_handler.dart';

part 'controle_controller.g.dart';

class ControleController = _ControleControllerBase with _$ControleController;

abstract class _ControleControllerBase with Store {
  @observable
  List<ControleModel> controleInfos = [];

  @observable
  int temperatura = 24;

  @action
  void initialize() {
    getData();
  }

  final socketController = Modular.get<SocketHandler>();

  @action
  Future<void> setTemperatura(int value) async {
    controleInfos[0].temperatura = controleInfos[0].temperatura + value;
    temperatura = value + controleInfos[0].temperatura;
    print(controleInfos[0].temperatura.toString());
    await socketController.sendMessage(temperatura.toString());
  }

  @action
  void getData() {
    if (controleInfos.isEmpty) {
      controleInfos.clear();
      controleInfos.add(ControleModel(
          bloco: "Bloco B",
          humidade: 40,
          sala: 'Sala 03',
          status: 'Ativa',
          temperatura: 24));
    }
    temperatura = controleInfos[0].temperatura;
  }
}
