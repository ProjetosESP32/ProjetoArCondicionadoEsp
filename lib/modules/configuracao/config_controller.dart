import 'package:mobx/mobx.dart';
import 'package:splash_ifmt/data/models/controle/controle_model.dart';
import 'package:splash_ifmt/data/models/sala/sala_model.dart';

part 'config_controller.g.dart';

class ConfigController = _ConfigControllerBase with _$ConfigController;

abstract class _ConfigControllerBase with Store {
  @observable
  String mensagem = "Enviado: ";

  @observable
  String comando = "Enviado: ";

  @observable
  bool isConnected = false;

  @action
  void initialize() {}

  @action
  void setTemperatura(int value) {
    if (value == -1) {
      comando =
          "var uint16_t tempDown[71] = {8990, 4490,  556, 590,  558, 562,  558, 564,  560, 1664,  582, 1670, 582, 564,  556, 566,  530, 1660,  590, 1690,  584, 1666,  558, 1692,582, 1668,  580, 564,  558, 1668,  584, 1664,  586, 564,  556, 1666,Z584, 564,  554, 566,  560, 1666,  584, 562,  558, 564,  556, 566,530, 588,  558, 564,  558, 1664,  584, 1668,  582, 566,  556, 1666,558, 1690,  586, 1666,  582, 1664,  560, 42434,  8994, 2252,  586}; ";
    } else {
      comando =
          "uint16_t tempUp[71] = {8994, 4486,  588, 560,  556, 564,  558, 564,  558, 1666,  586,1664,  586, 562,  560, 560,  536, 1688,  582, 1666,  584, 1666, 586, 1664,  586, 1664,  582, 564,  562, 1662,  586, 1664,  586, 562,  556, 1666,  586, 562,  558, 1664,  562, 588,  560, 560, 562, 560,  558, 562,  558, 564,  560, 562,  558, 1668,  588, 558,558, 1664,  584, 1664,  586, 1666,  584, 1664,  584, 1664,  586,42406,  8968, 2280,  584};";
    }
    mensagem = '"Enviado: " + $comando';
  }

  @action
  void setPower() {
    comando =
        "uint16_t power[71] = {9024, 4456,  620, 530,  592, 528,  590, 532,  594, 1628,  618, 1632,  616, 532,  592, 530,  590, 1634,  618, 1632,618, 1630,  618, 1632,  618, 1630,  618, 530,  592, 1630,620, 1630,  620, 530,  592, 1630,  618, 532,  592, 526,590, 1632,  620, 1630,  616, 532,  592, 528,  592, 530,592, 528,  592, 1630,  614, 1634,  618, 530,  588, 532,594, 1628,  616, 1632,  622, 1628,  618, 42374,  9028,2218,  622}; ";
    mensagem = '"Enviado: " + $comando';
  }

  @action
  void setIsConneted() {
    isConnected = !isConnected;
  }
}
