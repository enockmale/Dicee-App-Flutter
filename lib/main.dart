import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int i = 1;
  int j = 1;

  void d() {
    setState(() {
      i = 1 + Random().nextInt(6);
      j = 1 + Random().nextInt(6);
    });
  }

  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                d();
              },
              child: Image.asset('images/dice$i.png'),
            ),
          ),
          SizedBox(width: 8),
          Expanded(
            child: FlatButton(
              onPressed: () {
                d();
              },
              child: Image.asset('images/dice$j.png'),
            ),
          ),
        ],
      ),
    );
  }
}

//class DicePage extends StatelessWidget {}
