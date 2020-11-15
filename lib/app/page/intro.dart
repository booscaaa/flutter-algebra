import 'package:app/app/page/basic.dart';
import 'package:app/app/page/calc.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exemplos de álgebra"),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
                height: 200,
                child: Card(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BasicPage()));
                    },
                    child: Center(
                      child: Text("Exemplos básicos"),
                    ),
                  ),
                )),
            SizedBox(
                height: 200,
                child: Card(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => CalcPage()));
                    },
                    child: Center(
                      child: Text("Cálculos"),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
