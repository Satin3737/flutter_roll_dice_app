import 'package:flutter/material.dart';
import 'package:flutter_roll_dice_app/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    super.key,
    this.colors = const [Colors.deepPurple, Colors.purple],
  });

  const GradientContainer.red({
    super.key,
    this.colors = const [Colors.red, Colors.orange],
  });

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: colors,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
