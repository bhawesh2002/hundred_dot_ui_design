import 'package:flutter/material.dart';

class UiSizes {
  static late double _deviceWidth;
  static late double _deviceHeight;

  static void init(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
  }

  static double get deviceWidth => _deviceWidth;

  static double get deviceHeight => _deviceHeight;

  static double widthPercent(double percentage) {
    return _deviceWidth * percentage / 100.0;
  }

  static double heightPercent(double percentage) {
    return _deviceHeight * percentage / 100.0;
  }

  static double sizeFromWidth(double widthPercentage, double heightPercentage) {
    return (deviceWidth * widthPercentage) / 100.0;
  }

  static double sizeFromHeight(
      double widthPercentage, double heightPercentage) {
    return (deviceHeight * heightPercentage) / 100.0;
  }
}
