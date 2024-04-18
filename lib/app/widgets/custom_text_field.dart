import 'package:flutter/material.dart';

enum TextFieldType {
  underline,
  outline,
  none,
}

class CustomTextField extends StatelessWidget {
  final TextFieldType type;
  final TextEditingController controller;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmitted;
  final String? hintText;
  final Widget? suffixIcon;
  const CustomTextField(
      {required this.type,
      required this.controller,
      this.onChanged,
      this.onSubmitted,
      this.hintText,
      this.suffixIcon,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: _getDecoration(),
      controller: controller,
      onChanged: onChanged,
      onSubmitted: onSubmitted,
    );
  }

  InputDecoration _getDecoration() {
    switch (type) {
      case TextFieldType.underline:
        return InputDecoration(
          hintText: hintText,
          border: const UnderlineInputBorder(),
          suffix: suffixIcon,
        );
      case TextFieldType.outline:
        return InputDecoration(
          hintText: hintText,
          border: const OutlineInputBorder(),
          suffix: suffixIcon,
        );
      case TextFieldType.none:
        return InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
          suffix: suffixIcon,
        );
      default:
        return const InputDecoration();
    }
  }
}
