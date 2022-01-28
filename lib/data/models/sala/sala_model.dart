import 'package:json_annotation/json_annotation.dart';

part 'sala_model.g.dart';

@JsonSerializable()
class SalaModel {
  String sala;
  String bloco;
  String hora;
  String status;

  SalaModel(
      {required this.sala,
      required this.bloco,
      required this.hora,
      required this.status});

  factory SalaModel.fromJson(Map<String, dynamic> json) =>
      _$SalaModelFromJson(json);
  Map<String, dynamic> toJson() => _$SalaModelToJson(this);
}
