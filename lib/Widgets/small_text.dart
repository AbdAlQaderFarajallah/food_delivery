import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SmallText extends StatelessWidget {
  final Color color = const Color(0xFF332d2b);
  final String text;
  double size = 12;
  double height = 1.5;

  SmallText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        height: height,
      ),
    );
  }
}
