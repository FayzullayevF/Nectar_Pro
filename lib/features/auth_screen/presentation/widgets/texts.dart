import 'package:flutter/material.dart';

class TextsMain extends StatelessWidget {
  const TextsMain({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
    );
  }
}
