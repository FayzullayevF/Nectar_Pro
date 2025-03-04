import 'package:flutter/material.dart';

class SignUpFormfield extends StatelessWidget {
  const SignUpFormfield({
    super.key,
    required this.text,
    required this.controller,
    // required this.validator,
    required this.hindText
  });
  final String text;
  final TextEditingController controller;
  // final String? Function(String? value) validator;
  final String hindText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(text, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
        TextFormField(
          controller: controller,
          // validator: validator,
          decoration: InputDecoration(
            hintText: hindText,
            hintStyle: TextStyle(fontSize: 18),
            filled: true,
            fillColor: Colors.white,
          ),
        ),
      ],
    );
  }
}
