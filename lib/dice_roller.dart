import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDice = 1;

  void rollDice() {
    setState(() {
      currentDice = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        const SizedBox(
          height: 75,
        ),
        const Text(
          'DICE ROLLER',
          style: TextStyle(
            fontFamily: 'BloxBrk',
            fontSize: 60,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 200,
        ),
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          child: Image.asset(
            'assets/images/dice-$currentDice.png',
            key: Key('$currentDice'),
            width: 200,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 10.0),
        ),
        ElevatedButton(
          onPressed: rollDice,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
            elevation: 10,
            shape: const StadiumBorder(),
            padding: const EdgeInsets.all(16.0),
            side: const BorderSide(
              color: Colors.black,
              width: 1,
            ),
          ),
          child: const Text(
            'Roll Dice',
            style: TextStyle(
              color: Colors.black,
              fontSize: 28,
            ),
          ),
        ),
      ],
    );
  }
}
