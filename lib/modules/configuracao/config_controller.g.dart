// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ConfigController on _ConfigControllerBase, Store {
  final _$mensagemAtom = Atom(name: '_ConfigControllerBase.mensagem');

  @override
  String get mensagem {
    _$mensagemAtom.reportRead();
    return super.mensagem;
  }

  @override
  set mensagem(String value) {
    _$mensagemAtom.reportWrite(value, super.mensagem, () {
      super.mensagem = value;
    });
  }

  final _$comandoAtom = Atom(name: '_ConfigControllerBase.comando');

  @override
  String get comando {
    _$comandoAtom.reportRead();
    return super.comando;
  }

  @override
  set comando(String value) {
    _$comandoAtom.reportWrite(value, super.comando, () {
      super.comando = value;
    });
  }

  final _$isConnectedAtom = Atom(name: '_ConfigControllerBase.isConnected');

  @override
  bool get isConnected {
    _$isConnectedAtom.reportRead();
    return super.isConnected;
  }

  @override
  set isConnected(bool value) {
    _$isConnectedAtom.reportWrite(value, super.isConnected, () {
      super.isConnected = value;
    });
  }

  final _$_ConfigControllerBaseActionController =
      ActionController(name: '_ConfigControllerBase');

  @override
  void initialize() {
    final _$actionInfo = _$_ConfigControllerBaseActionController.startAction(
        name: '_ConfigControllerBase.initialize');
    try {
      return super.initialize();
    } finally {
      _$_ConfigControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTemperatura(int value) {
    final _$actionInfo = _$_ConfigControllerBaseActionController.startAction(
        name: '_ConfigControllerBase.setTemperatura');
    try {
      return super.setTemperatura(value);
    } finally {
      _$_ConfigControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPower() {
    final _$actionInfo = _$_ConfigControllerBaseActionController.startAction(
        name: '_ConfigControllerBase.setPower');
    try {
      return super.setPower();
    } finally {
      _$_ConfigControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsConneted() {
    final _$actionInfo = _$_ConfigControllerBaseActionController.startAction(
        name: '_ConfigControllerBase.setIsConneted');
    try {
      return super.setIsConneted();
    } finally {
      _$_ConfigControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
mensagem: ${mensagem},
comando: ${comando},
isConnected: ${isConnected}
    ''';
  }
}
