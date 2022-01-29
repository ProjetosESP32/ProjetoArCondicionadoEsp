// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AuthController on _AuthControllerBase, Store {
  final _$countAtom = Atom(name: '_AuthControllerBase.count');

  @override
  int get count {
    _$countAtom.reportRead();
    return super.count;
  }

  @override
  set count(int value) {
    _$countAtom.reportWrite(value, super.count, () {
      super.count = value;
    });
  }

  final _$currentUserAsyncAction =
      AsyncAction('_AuthControllerBase.currentUser');

  @override
  Future<void> currentUser() {
    return _$currentUserAsyncAction.run(() => super.currentUser());
  }

  @override
  String toString() {
    return '''
count: ${count}
    ''';
  }
}
