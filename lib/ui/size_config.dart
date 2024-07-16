import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? width;
  static double? height;
  static Orientation? orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    width = _mediaQueryData!.size.width;
    height = _mediaQueryData!.size.height;
    orientation = _mediaQueryData!.orientation;
  }
}

// 세로 비율에 따른 높이
double getHeight(double inputHeight) {
  double screenHeight = SizeConfig.height!;
  return (inputHeight / 812.0) * screenHeight;
}

// 가로 비율에 따른 너비
double getWidth(double inputWidth) {
  double screenWidth = SizeConfig.width!;
  return (inputWidth / 375.0) * screenWidth;
}
