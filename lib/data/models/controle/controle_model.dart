import 'package:json_annotation/json_annotation.dart';

part 'controle_model.g.dart';

@JsonSerializable()
class ControleModel {
  String sala;
  String bloco;
  int humidade;
  String status;
  int temperatura;

  ControleModel(
      {required this.sala,
      required this.bloco,
      required this.humidade,
      required this.temperatura,
      required this.status});

  factory ControleModel.fromJson(Map<String, dynamic> json) =>
      _$ControleModelFromJson(json);
  Map<String, dynamic> toJson() => _$ControleModelToJson(this);
}
