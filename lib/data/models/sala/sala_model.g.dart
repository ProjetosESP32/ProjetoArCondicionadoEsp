// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sala_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SalaModel _$SalaModelFromJson(Map<String, dynamic> json) {
  return SalaModel(
    sala: json['sala'] as String,
    bloco: json['bloco'] as String,
    hora: json['hora'] as String,
    status: json['status'] as String,
  );
}

Map<String, dynamic> _$SalaModelToJson(SalaModel instance) => <String, dynamic>{
      'sala': instance.sala,
      'bloco': instance.bloco,
      'hora': instance.hora,
      'status': instance.status,
    };
