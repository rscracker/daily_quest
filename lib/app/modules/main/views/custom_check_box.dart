import 'package:flutter/material.dart';

class CustomCheckBox extends StatelessWidget {
  final bool isChecked;
  const CustomCheckBox({required this.isChecked, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Colors.white,
      ),
      width: 20,
      height: 20,
      child: Center(
        child: Icon(
          Icons.check,
          size: 17,
        ),
      ),
    );
  }
}
