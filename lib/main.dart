import 'dart:math';

import 'package:flutter/material.dart';

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

final List<int> list = [1, 2, 3, 4, 5, 6];

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void onPressed() {
    setState(() {
      leftDiceNumber = list[Random().nextInt(list.length)];
      rightDiceNumber = list[Random().nextInt(list.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: onPressed,
              child: Image.asset(
                'images/dice$leftDiceNumber.png',
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: TextButton(
              onPressed: onPressed,
              child: Image.asset(
                'images/dice$rightDiceNumber.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
