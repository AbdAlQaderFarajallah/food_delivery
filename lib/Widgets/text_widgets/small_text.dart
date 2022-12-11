import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SmallText extends StatelessWidget {
  Color? color = const Color(0xFF332d2b);
  final String text;
  double size;
  double height;

  SmallText(
    this.text, {
    this.height = 1.2,
    this.color,
    this.size = 12,
    super.key,
  });

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
