import 'dart:math';

import 'package:flutter/material.dart';

class RoleDice extends StatefulWidget {
  @override
  State<RoleDice> createState() {
    return RoleDiceState();
  }
}

class RoleDiceState extends State<RoleDice> {
  String activerollDice = "assets/images/dice-1.png";
  var activerollDiceNumber = 4;
  void rollDice() {
    setState(() {
      activerollDiceNumber = Random().nextInt(6) + 1;
      activerollDice = "assets/images/dice-$activerollDiceNumber.png";
    });
  }

  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activerollDice,
          width: 200,
        ),
        TextButton(
            onPressed: rollDice,
            child: const Text(
              'rollDice',
              style: TextStyle(fontSize: 28, color: Colors.black87),
            ))
      ],
    );
  }
}
