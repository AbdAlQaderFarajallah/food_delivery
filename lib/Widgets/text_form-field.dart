import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  TextFormFieldWidget({
    required this.hint,
    required this.type,
    required this.prefixIcon,
    Key? key,
  }) : super(key: key);

  String hint;
  TextInputType type;
  Icon prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: type,
      decoration: InputDecoration(
        labelText: hint,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        prefixIcon: prefixIcon,
      ),
    );
  }
}
