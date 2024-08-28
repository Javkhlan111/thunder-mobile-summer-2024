import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  final TextEditingController controller;
  final bool isPass;
  final String hintText;
  final TextInputType inputType;

  const TextFieldInput({super.key,
  required this.controller,
  required this.isPass,
  required this.hintText,
  required this.inputType});

  @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder(
      borderSide: Divider.createBorderSide(context)
    );
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        border: inputBorder,
        focusedBorder: inputBorder,
        enabledBorder: inputBorder,
        filled: true,
        contentPadding: const EdgeInsets.all(8)
      ),
      keyboardType: inputType,
        obscureText: isPass,
    );
  }
}
