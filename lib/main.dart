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

int leftdicenumber = 5;
int rightdicenumber = 4;

void Dicepress(){leftdicenumber = Random().nextInt(6) + 1 ;
rightdicenumber = Random().nextInt(6) + 1;
}


class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: TextButton(
              onPressed: () {
                setState(() {
                  Dicepress();
                });
              },
              child: Image(
                image: AssetImage('images/dice$leftdicenumber.png'),
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() { Dicepress();

                });
              },
              child: Image(
                image: AssetImage('images/dice$rightdicenumber.png'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
