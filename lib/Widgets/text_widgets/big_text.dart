import 'package:flutter/material.dart';
import 'package:food_delivery/utils/dimensions.dart';

// ignore: must_be_immutable
class BigText extends StatelessWidget {
  final Color color = const Color(0xFF332d2b);
  final String text;
  double size;

  BigText({required this.text, this.size = 0, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        color: color,
        fontSize: size == 0 ? Dimensions.font20 : size,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
