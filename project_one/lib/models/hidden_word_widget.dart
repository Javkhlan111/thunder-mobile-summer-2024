import 'package:flutter/material.dart';
import '../widgets/gradient_letter.dart';

class HiddenWidget extends StatelessWidget {
  final String letter;
  final double height;
  final double width;

  const HiddenWidget(this.letter, this.height, this.width, {super.key});

  @override
  Widget build(BuildContext context) {
    return GradientLetter(letter, 43, 43, 9.4, 6.8, 0);
  }
}
