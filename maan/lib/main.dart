import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text("Dice"),
          backgroundColor: Colors.red,
        ),
        body: const dice(),
      ),
    ),
  );
}

// ignore: camel_case_types
class dice extends StatefulWidget {
  const dice({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _diceState createState() => _diceState();
}

// ignore: camel_case_types
class _diceState extends State<dice> {
  int leftDice = 1;
  int rightDice = 1;
  void change() {
    setState(() {
      leftDice = Random().nextInt(6) + 1;
      rightDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                change();
              },
              child: Image.asset("images/dice$leftDice.png"),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                change();
              },
              child: Image.asset("images/dice$rightDice.png"),
            ),
          ),
        ],
      ),
    );
  }
}
