import 'package:flutter/material.dart';
import 'package:dice_roller/dice_roller.dart';
// import 'package:dice_roller/styled_text.dart';

const beginGradientAlignment = Alignment.topLeft;
const endGradientAlignment = Alignment.center;

class GradientContainer extends StatelessWidget {
  const GradientContainer({required this.colors, super.key});

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: beginGradientAlignment,
          end: endGradientAlignment,
          colors: colors,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
