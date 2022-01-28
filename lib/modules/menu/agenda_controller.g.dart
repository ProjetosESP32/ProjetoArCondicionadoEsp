// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agenda_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AgendaController on _AgendaControllerBase, Store {
  final _$dataSourceAtom = Atom(name: '_AgendaControllerBase.dataSource');

  @override
  List<SalaModel> get dataSource {
    _$dataSourceAtom.reportRead();
    return super.dataSource;
  }

  @override
  set dataSource(List<SalaModel> value) {
    _$dataSourceAtom.reportWrite(value, super.dataSource, () {
      super.dataSource = value;
    });
  }

  final _$dropTableAtom = Atom(name: '_AgendaControllerBase.dropTable');

  @override
  List<String> get dropTable {
    _$dropTableAtom.reportRead();
    return super.dropTable;
  }

  @override
  set dropTable(List<String> value) {
    _$dropTableAtom.reportWrite(value, super.dropTable, () {
      super.dropTable = value;
    });
  }

  final _$currentDropTableAtom =
      Atom(name: '_AgendaControllerBase.currentDropTable');

  @override
  String get currentDropTable {
    _$currentDropTableAtom.reportRead();
    return super.currentDropTable;
  }

  @override
  set currentDropTable(String value) {
    _$currentDropTableAtom.reportWrite(value, super.currentDropTable, () {
      super.currentDropTable = value;
    });
  }

  final _$dateAtom = Atom(name: '_AgendaControllerBase.date');

  @override
  String get date {
    _$dateAtom.reportRead();
    return super.date;
  }

  @override
  set date(String value) {
    _$dateAtom.reportWrite(value, super.date, () {
      super.date = value;
    });
  }

  final _$diaAtom = Atom(name: '_AgendaControllerBase.dia');

  @override
  String get dia {
    _$diaAtom.reportRead();
    return super.dia;
  }

  @override
  set dia(String value) {
    _$diaAtom.reportWrite(value, super.dia, () {
      super.dia = value;
    });
  }

  final _$mesAtom = Atom(name: '_AgendaControllerBase.mes');

  @override
  String get mes {
    _$mesAtom.reportRead();
    return super.mes;
  }

  @override
  set mes(String value) {
    _$mesAtom.reportWrite(value, super.mes, () {
      super.mes = value;
    });
  }

  final _$anoAtom = Atom(name: '_AgendaControllerBase.ano');

  @override
  String get ano {
    _$anoAtom.reportRead();
    return super.ano;
  }

  @override
  set ano(String value) {
    _$anoAtom.reportWrite(value, super.ano, () {
      super.ano = value;
    });
  }

  final _$initializeAsyncAction =
      AsyncAction('_AgendaControllerBase.initialize');

  @override
  Future<void> initialize() {
    return _$initializeAsyncAction.run(() => super.initialize());
  }

  final _$_AgendaControllerBaseActionController =
      ActionController(name: '_AgendaControllerBase');

  @override
  void getData(int value) {
    final _$actionInfo = _$_AgendaControllerBaseActionController.startAction(
        name: '_AgendaControllerBase.getData');
    try {
      return super.getData(value);
    } finally {
      _$_AgendaControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDropDown(String value) {
    final _$actionInfo = _$_AgendaControllerBaseActionController.startAction(
        name: '_AgendaControllerBase.setDropDown');
    try {
      return super.setDropDown(value);
    } finally {
      _$_AgendaControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setButtonArrow(int value) {
    final _$actionInfo = _$_AgendaControllerBaseActionController.startAction(
        name: '_AgendaControllerBase.setButtonArrow');
    try {
      return super.setButtonArrow(value);
    } finally {
      _$_AgendaControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDate(String value) {
    final _$actionInfo = _$_AgendaControllerBaseActionController.startAction(
        name: '_AgendaControllerBase.setDate');
    try {
      return super.setDate(value);
    } finally {
      _$_AgendaControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
dataSource: ${dataSource},
dropTable: ${dropTable},
currentDropTable: ${currentDropTable},
date: ${date},
dia: ${dia},
mes: ${mes},
ano: ${ano}
    ''';
  }
}
