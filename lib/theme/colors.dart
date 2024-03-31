import 'package:flutter/material.dart';

class AppColors {
  static const Color primary1 = Color(0xFF491AF5);
  static const Color primary2 = Color(0xFF9747FF);
  static const Color secondary = Color(0xFFBABFFC);
  static const Color additionalwhite = Color(0xFFEDE0FB);
  static const Color additionalGreen = Color(0xFF7CCB5D);
  static const Color additionalRed = Color(0xFFFF6868);
  static const Color additionalYellow = Color(0xFFF9DD4B);
  static const Color whiteColor = Colors.white;
  static const Color blackColor = Colors.black;
  static const Color scaffoldBgColor = Color.fromARGB(255, 238, 238, 238);
  static const LinearGradient linearGradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [additionalwhite, secondary]);
}
