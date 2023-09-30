import 'package:flutter/material.dart';
import 'package:dice_roller/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colors: [
            Color.fromARGB(255, 204, 54, 0),
            Color.fromARGB(255, 255, 153, 0),
          ],
        ),
      ),
    ),
  );
}
