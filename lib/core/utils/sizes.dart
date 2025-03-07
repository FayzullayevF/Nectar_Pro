import 'package:flutter/material.dart';

class AppSizes {
  static late double padding25;
  static late double wRatio;
  static late double hRatio;

  static init(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    wRatio = size.width / 413;
    hRatio = size.height / 896;
    // padding25 = wRatio * 
  }
}
