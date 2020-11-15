// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'matrix.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MatrixController on _MatrixControllerBase, Store {
  final _$resultAtom = Atom(name: '_MatrixControllerBase.result');

  @override
  String get result {
    _$resultAtom.reportRead();
    return super.result;
  }

  @override
  set result(String value) {
    _$resultAtom.reportWrite(value, super.result, () {
      super.result = value;
    });
  }

  final _$colAtom = Atom(name: '_MatrixControllerBase.col');

  @override
  int get col {
    _$colAtom.reportRead();
    return super.col;
  }

  @override
  set col(int value) {
    _$colAtom.reportWrite(value, super.col, () {
      super.col = value;
    });
  }

  final _$rowAtom = Atom(name: '_MatrixControllerBase.row');

  @override
  int get row {
    _$rowAtom.reportRead();
    return super.row;
  }

  @override
  set row(int value) {
    _$rowAtom.reportWrite(value, super.row, () {
      super.row = value;
    });
  }

  final _$_MatrixControllerBaseActionController =
      ActionController(name: '_MatrixControllerBase');

  @override
  dynamic init() {
    final _$actionInfo = _$_MatrixControllerBaseActionController.startAction(
        name: '_MatrixControllerBase.init');
    try {
      return super.init();
    } finally {
      _$_MatrixControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic calcMatrixTransposta() {
    final _$actionInfo = _$_MatrixControllerBaseActionController.startAction(
        name: '_MatrixControllerBase.calcMatrixTransposta');
    try {
      return super.calcMatrixTransposta();
    } finally {
      _$_MatrixControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic calcMatrixDet() {
    final _$actionInfo = _$_MatrixControllerBaseActionController.startAction(
        name: '_MatrixControllerBase.calcMatrixDet');
    try {
      return super.calcMatrixDet();
    } finally {
      _$_MatrixControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic calcMatrixInversa() {
    final _$actionInfo = _$_MatrixControllerBaseActionController.startAction(
        name: '_MatrixControllerBase.calcMatrixInversa');
    try {
      return super.calcMatrixInversa();
    } finally {
      _$_MatrixControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic createScalarMatrix() {
    final _$actionInfo = _$_MatrixControllerBaseActionController.startAction(
        name: '_MatrixControllerBase.createScalarMatrix');
    try {
      return super.createScalarMatrix();
    } finally {
      _$_MatrixControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic createMatrixIdentity() {
    final _$actionInfo = _$_MatrixControllerBaseActionController.startAction(
        name: '_MatrixControllerBase.createMatrixIdentity');
    try {
      return super.createMatrixIdentity();
    } finally {
      _$_MatrixControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
result: ${result},
col: ${col},
row: ${row}
    ''';
  }
}
