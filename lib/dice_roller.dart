import 'dart:math';

import 'package:flutter/material.dart';

final random = Random();
final duration = Duration(milliseconds: 300);
final curve = Curves.easeInOut;

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var roll = 1;
  var _opacity = 1.0;

  void onPressed() {
    setState(() {
      _opacity = 0.0;
    });

    Future.delayed(duration, () {
      setState(() {
        roll = random.nextInt(6) + 1;
        _opacity = 1.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AnimatedOpacity(
          opacity: _opacity,
          duration: duration,
          curve: curve,
          child: Image.asset(
            'assets/images/dice-$roll.png',
            width: 200,
            height: 200,
          ),
        ),
        const SizedBox(height: 32),
        FilledButton(
          onPressed: onPressed,
          style: FilledButton.styleFrom(
            elevation: 4,
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            foregroundColor: Colors.white,
            backgroundColor: Colors.deepPurple,
            textStyle: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
