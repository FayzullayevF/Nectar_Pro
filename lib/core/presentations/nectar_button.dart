import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/core/utils/colors.dart';

class NectarButton extends StatelessWidget {
  const NectarButton({super.key, required this.title});

  final String title;
  

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 25, right: 25),
      width: 364.w,
      height: 67.h,
      decoration: BoxDecoration(
        color: AppColors.nectarContainerColor,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
            fontFamily: "Gilroy"
          ),
        ),
      ),
    );
  }
}
