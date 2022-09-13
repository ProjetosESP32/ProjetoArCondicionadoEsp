// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'socket_handler.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SocketHandler on _SocketHandlerBase, Store {
  final _$ipAtom = Atom(name: '_SocketHandlerBase.ip');

  @override
  String get ip {
    _$ipAtom.reportRead();
    return super.ip;
  }

  @override
  set ip(String value) {
    _$ipAtom.reportWrite(value, super.ip, () {
      super.ip = value;
    });
  }

  final _$portAtom = Atom(name: '_SocketHandlerBase.port');

  @override
  int get port {
    _$portAtom.reportRead();
    return super.port;
  }

  @override
  set port(int value) {
    _$portAtom.reportWrite(value, super.port, () {
      super.port = value;
    });
  }

  final _$_lastTimerAtom = Atom(name: '_SocketHandlerBase._lastTimer');

  @override
  Timer? get _lastTimer {
    _$_lastTimerAtom.reportRead();
    return super._lastTimer;
  }

  @override
  set _lastTimer(Timer? value) {
    _$_lastTimerAtom.reportWrite(value, super._lastTimer, () {
      super._lastTimer = value;
    });
  }

  final _$_socketInstanceAtom =
      Atom(name: '_SocketHandlerBase._socketInstance');

  @override
  Socket? get _socketInstance {
    _$_socketInstanceAtom.reportRead();
    return super._socketInstance;
  }

  @override
  set _socketInstance(Socket? value) {
    _$_socketInstanceAtom.reportWrite(value, super._socketInstance, () {
      super._socketInstance = value;
    });
  }

  final _$_getInstanceAsyncAction =
      AsyncAction('_SocketHandlerBase._getInstance');

  @override
  Future<Socket> _getInstance() {
    return _$_getInstanceAsyncAction.run(() => super._getInstance());
  }

  final _$_destroyInstanceAsyncAction =
      AsyncAction('_SocketHandlerBase._destroyInstance');

  @override
  Future<void> _destroyInstance() {
    return _$_destroyInstanceAsyncAction.run(() => super._destroyInstance());
  }

  final _$sendMessageAsyncAction =
      AsyncAction('_SocketHandlerBase.sendMessage');

  @override
  Future<void> sendMessage(String message) {
    return _$sendMessageAsyncAction.run(() => super.sendMessage(message));
  }

  final _$_SocketHandlerBaseActionController =
      ActionController(name: '_SocketHandlerBase');

  @override
  void _destroyAfterTime() {
    final _$actionInfo = _$_SocketHandlerBaseActionController.startAction(
        name: '_SocketHandlerBase._destroyAfterTime');
    try {
      return super._destroyAfterTime();
    } finally {
      _$_SocketHandlerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void detroy() {
    final _$actionInfo = _$_SocketHandlerBaseActionController.startAction(
        name: '_SocketHandlerBase.detroy');
    try {
      return super.detroy();
    } finally {
      _$_SocketHandlerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
ip: ${ip},
port: ${port}
    ''';
  }
}
