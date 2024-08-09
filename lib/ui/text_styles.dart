import 'package:flutter/material.dart';
import 'package:food_recipe/ui/color_styles.dart';
import 'package:food_recipe/ui/size_config.dart';

abstract class TextStyles {
  static const Color defaultFontColor = ColorStyles.gray1;

  static TextStyle boldStyle(double fontSize, [Color? fontColor]) {
    return TextStyle(
      color: fontColor ?? defaultFontColor,
      fontSize: fontSize,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
      height: 0,
    );
  }

  static TextStyle regularStyle(double fontSize, [Color? fontColor]) {
    return TextStyle(
      color: fontColor ?? defaultFontColor,
      fontSize: fontSize,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
      height: 0,
    );
  }

  static TextStyle titleTextBold = boldStyle(getHeight(50));
  static TextStyle headerTextBold = boldStyle(getHeight(30));
  static TextStyle largeTextBold = boldStyle(getHeight(20));
  static TextStyle mediumTextBold = boldStyle(getHeight(18));
  static TextStyle normalTextBold = boldStyle(getHeight(16));
  static TextStyle smallTextBold = boldStyle(getHeight(14));
  static TextStyle smallerTextBold = boldStyle(getHeight(11));

  static TextStyle titleTextRegular = regularStyle(getHeight(50));
  static TextStyle headerTextRegular = regularStyle(getHeight(30));
  static TextStyle largeTextRegular = regularStyle(getHeight(20));
  static TextStyle mediumTextRegular = regularStyle(getHeight(18));
  static TextStyle normalTextRegular = regularStyle(getHeight(16));
  static TextStyle smallTextRegular = regularStyle(getHeight(14));
  static TextStyle smallerTextRegular = regularStyle(getHeight(11));
}
