import 'package:flutter/material.dart';
import 'package:food_delivery/utils/dimensions.dart';

// ignore: must_be_immutable
class BigText extends StatelessWidget {
  final Color color = const Color(0xFF332d2b);
  final String text;

  BigText({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        color: color,
        fontSize: Dimensions.font20,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
