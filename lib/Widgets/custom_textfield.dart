import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.maxLine,
      this.fontSize = 16});
  final TextEditingController controller;
  final String hintText;
  final int maxLine;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) {
        if (value!.isEmpty) {
          return 'the field is empty';
        } else {
          return null;
        }
      },
      maxLines: maxLine,
      style: TextStyle(
        color: Colors.white,
        fontSize: fontSize,
      ),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          fontSize: 20,
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
          borderSide: BorderSide(
            color: Colors.lightBlue,
            width: 1,
          ),
        ),
      ),
    );
  }
}
