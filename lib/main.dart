import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

/*class DicePage extends StatelessWidget {
  int leftDice=2;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: TextButton(
                child: Image.asset('images/dice$leftDice.png'),
                onPressed: () {
                  print('Left Button pressed');
                },
              ),
            ),
            Expanded(
              child: TextButton(
                child: Image.asset('images/dice1.png'),
                onPressed: () {
                  print('Right Button pressed');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}*/
class DicePage extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<DicePage> {
  int leftDice = 2;
  int rightDice = 1;

  void changeState() {
    rightDice = Random().nextInt(6) + 1;
    leftDice = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      //leftDice=3;
                      //rightDice = Random().nextInt(6) + 1;
                      //leftDice = Random().nextInt(6) + 1;
                      changeState(); // call by function
                    });
                    print('Left Button pressed');
                  },
                  child: Image.asset('images/dice$leftDice.png')),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    //rightDice = Random().nextInt(6) + 1;
                    //leftDice = Random().nextInt(6) + 1;
                    changeState();
                  });
                },
                child: Image.asset('images/dice$rightDice.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
