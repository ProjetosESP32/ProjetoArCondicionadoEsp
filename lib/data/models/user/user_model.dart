import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@HiveType(typeId: 0)
@JsonSerializable(includeIfNull: false)
class UserModel extends HiveObject {
  @HiveField(0)
  String? name;

  @HiveField(1)
  @JsonKey(name: 'email')
  String? email;

  @HiveField(2)
  String? senha;

  @HiveField(3)
  String? telefone;

  @HiveField(4)
  bool? admin;

  @HiveField(5)
  bool? isSaved = true;

  @HiveField(6)
  String? password;

  UserModel(
      {this.name,
      this.email,
      this.senha,
      this.telefone,
      this.admin,
      this.isSaved,
      this.password});

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
