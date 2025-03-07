import 'package:flutter/material.dart';

class TextsSecondary extends StatelessWidget {
  const TextsSecondary({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
    );
  }
}
