import 'package:flutter/material.dart';

class CustomTextStyles {
  static TextStyle title({
    double fontSize = 20,
    FontWeight fontWeight = FontWeight.bold,
    Color color = Colors.white,
    String fontFamily = 'Poppins',
  }) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontFamily: fontFamily,
      fontWeight: fontWeight,
    );
  }

  static TextStyle subtitle({
    double fontSize = 18,
    FontWeight fontWeight = FontWeight.w600,
    Color color = Colors.white,
    String fontFamily = 'Poppins',
  }) {
    return title(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      fontFamily: fontFamily,
    );
  }

  static TextStyle body({
    double fontSize = 16,
    FontWeight fontWeight = FontWeight.normal,
    Color color = Colors.white,
    String fontFamily = 'Poppins',
  }) {
    return subtitle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      fontFamily: fontFamily,
    );
  }

}
