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
      name: fields[0] as String?,
      email: fields[1] as String?,
      senha: fields[2] as String?,
      telefone: fields[3] as String?,
      admin: fields[4] as bool?,
      isSaved: fields[5] as bool?,
      password: fields[6] as String?,
      photoUrl: fields[7] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, UserModel obj) {
    writer
      ..writeByte(8)
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
      ..write(obj.isSaved)
      ..writeByte(6)
      ..write(obj.password)
      ..writeByte(7)
      ..write(obj.photoUrl);
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
      name: json['name'] as String?,
      email: json['email'] as String?,
      senha: json['senha'] as String?,
      telefone: json['telefone'] as String?,
      admin: json['admin'] as bool?,
      isSaved: json['isSaved'] as bool?,
      password: json['password'] as String?,
      photoUrl: json['photoUrl'] as String?,
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('email', instance.email);
  writeNotNull('senha', instance.senha);
  writeNotNull('telefone', instance.telefone);
  writeNotNull('admin', instance.admin);
  writeNotNull('isSaved', instance.isSaved);
  writeNotNull('password', instance.password);
  writeNotNull('photoUrl', instance.photoUrl);
  return val;
}
