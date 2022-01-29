// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserModelAdapter extends TypeAdapter<UserModel> {
  @override
  final int typeId = 0;

  @override
  UserModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserModel(
      name: fields[0] as String,
      email: fields[1] as String,
      senha: fields[2] as String,
      telefone: fields[3] as String?,
      admin: fields[4] as bool,
      isSaved: fields[5] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, UserModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.email)
      ..writeByte(2)
      ..write(obj.senha)
      ..writeByte(3)
      ..write(obj.telefone)
      ..writeByte(4)
      ..write(obj.admin)
      ..writeByte(5)
      ..write(obj.isSaved);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      name: json['name'] as String,
      email: json['email'] as String,
      senha: json['senha'] as String,
      telefone: json['telefone'] as String?,
      admin: json['admin'] as bool,
      isSaved: json['isSaved'] as bool?,
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'senha': instance.senha,
      'telefone': instance.telefone,
      'admin': instance.admin,
      'isSaved': instance.isSaved,
    };
