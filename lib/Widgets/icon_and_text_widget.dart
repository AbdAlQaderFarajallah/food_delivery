// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:food_delivery/Widgets/small_text.dart';

class IconAndTextWidget extends StatelessWidget {
  IconData icon;
  String text;
  Color iconColor;

  IconAndTextWidget(this.icon, this.text, this.iconColor, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: iconColor),
        const SizedBox(width: 5),
        SmallText(text),
      ],
    );
  }
}
