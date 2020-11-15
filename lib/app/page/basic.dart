import 'package:app/store/matrix/matrix.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class BasicPage extends StatefulWidget {
  @override
  _BasicPageState createState() => _BasicPageState();
}

class _BasicPageState extends State<BasicPage> {
  final matrixController = MatrixController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Álgebra"),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: RaisedButton(
                    color: Theme.of(context).primaryColor,
                    textColor: Colors.white,
                    onPressed: () {
                      matrixController.createScalarMatrix();
                    },
                    child: Text("Matrix escalar"),
                  ),
                ),
                Padding(padding: EdgeInsets.all(4)),
                Expanded(
                  child: RaisedButton(
                    color: Theme.of(context).primaryColor,
                    textColor: Colors.white,
                    onPressed: () {
                      matrixController.createMatrixIdentity();
                    },
                    child: Text("Matrix indentidade"),
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.all(4)),
            Observer(builder: (_) {
              return Container(
                  child: Text(matrixController.result,
                      style: TextStyle(
                        fontSize: 30,
                      )));
            })
          ],
        ),
      ),
    );
  }
}
