import 'package:app/store/matrix/matrix.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CalcPage extends StatefulWidget {
  @override
  _CalcPageState createState() => _CalcPageState();
}

class _CalcPageState extends State<CalcPage> {
  final matrixController = MatrixController();

  @override
  void initState() {
    super.initState();
    matrixController.init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cálculos"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text("Digite sua matrix abaixo"),
              Row(
                children: [
                  Expanded(
                      child: TextField(
                    controller: matrixController.linhas,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: "Linhas"),
                  )),
                  Padding(padding: EdgeInsets.all(4)),
                  Expanded(
                      child: TextField(
                    controller: matrixController.colunas,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: "Colunas"),
                  ))
                ],
              ),
              Observer(builder: (_) {
                return Column(
                  children: Iterable<int>.generate(matrixController.row)
                      .map<Widget>((row) => Padding(
                            padding: EdgeInsets.all(20),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children:
                                    Iterable<int>.generate(matrixController.col)
                                        .map<Widget>((col) => Expanded(
                                              child: Padding(
                                                padding: EdgeInsets.all(5),
                                                child: TextField(
                                                  controller: matrixController
                                                      .controllers["$row$col"],
                                                ),
                                              ),
                                            ))
                                        .toList()),
                          ))
                      .toList(),
                );
              }),
              Row(
                children: [
                  Expanded(
                    child: RaisedButton(
                      color: Theme.of(context).primaryColor,
                      textColor: Colors.white,
                      child: Text("Transposta"),
                      onPressed: () {
                        matrixController.calcMatrixTransposta();
                      },
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(3)),
                  Expanded(
                    child: RaisedButton(
                      color: Theme.of(context).primaryColor,
                      textColor: Colors.white,
                      child: Text("Determinante"),
                      onPressed: () {
                        matrixController.calcMatrixDet();
                      },
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(3)),
                  Expanded(
                    child: RaisedButton(
                      color: Theme.of(context).primaryColor,
                      textColor: Colors.white,
                      child: Text("Inversa"),
                      onPressed: () {
                        matrixController.calcMatrixInversa();
                      },
                    ),
                  ),
                ],
              ),
              Observer(builder: (_) {
                return Container(
                    child: Text(
                  matrixController.result,
                  style: TextStyle(fontSize: 30),
                ));
              })
            ],
          ),
        ),
      ),
    );
  }
}
