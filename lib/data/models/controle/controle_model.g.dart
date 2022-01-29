// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controle_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ControleModel _$ControleModelFromJson(Map<String, dynamic> json) =>
    ControleModel(
      sala: json['sala'] as String,
      bloco: json['bloco'] as String,
      humidade: json['humidade'] as int,
      temperatura: json['temperatura'] as int,
      status: json['status'] as String,
    );

Map<String, dynamic> _$ControleModelToJson(ControleModel instance) =>
    <String, dynamic>{
      'sala': instance.sala,
      'bloco': instance.bloco,
      'humidade': instance.humidade,
      'status': instance.status,
      'temperatura': instance.temperatura,
    };
