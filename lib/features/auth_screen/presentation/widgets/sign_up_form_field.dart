import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nectar/core/utils/colors.dart';

class SignUpFormfield extends StatelessWidget {
  const SignUpFormfield({
    super.key,
    required this.text,
    required this.controller,
    required this.hindText,
  });
  final String text;
  final TextEditingController controller;
  final String hindText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            fontFamily: "Gilroy",
            color: AppColors.smallTextColor,
          ),
        ),
        TextFormField(
          controller: controller,
          decoration: InputDecoration(
            hintText: hindText,
            labelStyle: TextStyle(color: Colors.white),
            hintStyle: TextStyle(fontSize: 18),
            filled: true,
            fillColor: Colors.white,
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 1),
            ),
          ),
        ),
      ],
    );
  }
}
