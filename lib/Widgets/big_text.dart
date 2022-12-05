import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BigText extends StatelessWidget {
  final Color color = const Color(0xFF332d2b);
  final String text;
  double size = 20;

  BigText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
