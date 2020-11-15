import 'package:flutter/widgets.dart';
import 'package:mobx/mobx.dart';
import 'package:ml_linalg/matrix.dart' as lib1;
import 'package:linalg/linalg.dart' as lib2;
part 'matrix.g.dart';

class MatrixController = _MatrixControllerBase with _$MatrixController;

abstract class _MatrixControllerBase with Store {
  @observable
  String result = "";

  @observable
  int col = 0;

  @observable
  int row = 0;

  Map<String, dynamic> controllers = {};

  final linhas = TextEditingController();
  final colunas = TextEditingController();

  @action
  init() {
    linhas.addListener(() {
      this.row =
          int.parse(this.linhas.text.isNotEmpty ? this.linhas.text : "0");

      this.controllers = {};

      for (int row in Iterable<int>.generate(this.row)) {
        for (int col in Iterable<int>.generate(this.col)) {
          controllers["$row$col"] = TextEditingController();
        }
      }
    });

    colunas.addListener(() {
      this.col =
          int.parse(this.colunas.text.isNotEmpty ? this.colunas.text : "0");

      this.controllers = {};

      for (int row in Iterable<int>.generate(this.row)) {
        for (int col in Iterable<int>.generate(this.col)) {
          controllers["$row$col"] = TextEditingController();
        }
      }
    });
  }

  @action
  calcMatrixTransposta() {
    final List<List<double>> lista = [];

    for (int row in Iterable<int>.generate(this.row)) {
      final List<double> aux = [];
      for (int col in Iterable<int>.generate(this.col)) {
        aux.add(double.parse(this.controllers["$row$col"].text));
      }
      lista.add(aux);
    }

    final matrix = lib1.Matrix.fromList(lista);
    final result = matrix.transpose();

    this.result = result.toString();
  }

  @action
  calcMatrixDet() {
    final List<List<double>> lista = [];

    for (int row in Iterable<int>.generate(this.row)) {
      final List<double> aux = [];
      for (int col in Iterable<int>.generate(this.col)) {
        aux.add(double.parse(this.controllers["$row$col"].text));
      }
      lista.add(aux);
    }

    final matrix = lib2.Matrix(lista);
    final result = matrix.det();

    this.result = result.toString();
  }

  @action
  calcMatrixInversa() {
    final List<List<double>> lista = [];

    for (int row in Iterable<int>.generate(this.row)) {
      final List<double> aux = [];
      for (int col in Iterable<int>.generate(this.col)) {
        aux.add(double.parse(this.controllers["$row$col"].text));
      }
      lista.add(aux);
    }

    final matrix = lib2.Matrix(lista);
    final result = matrix.inverse();

    this.result = result.toString();
  }

  @action
  createScalarMatrix() {
    final matrix = lib1.Matrix.scalar(3, 5);
    this.result = matrix.toString();
  }

  @action
  createMatrixIdentity() {
    final matrix = lib1.Matrix.identity(5);
    this.result = matrix.toString();
  }
}
