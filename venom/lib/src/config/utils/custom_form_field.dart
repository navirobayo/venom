import 'package:flutter/material.dart';

TextField customTextField({
  required BuildContext context,
  required TextAlign textAlign,
  required TextEditingController controller,
  required TextStyle? style,
  required TextStyle? hintStyle,
  required bool obscureText,
  TextInputType textType = TextInputType.text,
  int maxLength = 9,
  bool isEnable = false,
  InputDecoration? inputDecoration,
  String hintText = '',
}) {
  return TextField(
    controller: controller,
    keyboardType: textType,
    maxLength: maxLength,
    enabled: isEnable,
    style: style,
    cursorColor: Theme.of(context).colorScheme.inversePrimary,
    autofocus: true,
    decoration: inputDecoration = InputDecoration(
      contentPadding: EdgeInsets.zero,
      border: InputBorder.none,
      counter: const SizedBox(),
      hintText: hintText,
      hintStyle: hintStyle,
    ),
    obscureText: obscureText,
    textAlign: textAlign,
  );
}
