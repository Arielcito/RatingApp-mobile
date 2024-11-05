import 'package:flutter/material.dart';

class CustomStyles {
  static InputDecoration inputDecoration = const InputDecoration(
    contentPadding: EdgeInsets.all(20),
    filled: true,
    fillColor: Color(0xFF11161B),
    labelText: '',
    labelStyle: TextStyle(
      color: Colors.white,
      fontSize: 16,
      fontWeight: FontWeight.w400,
      fontFamily: 'Poppins',
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(color: Color(0xFF003459), width: 2.0),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(color: Color(0xFF003459), width: 2.0),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(color: Color(0xFF003459), width: 2.0),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(color: Color(0xFF003459), width: 2.0),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(color: Color(0xFF003459), width: 2.0),
    ),
    hintStyle: TextStyle(
      color: Colors.white,
    ),
  );

  static TextStyle textStyle30fwbold = const TextStyle(
      color: Colors.white,
      fontSize: 30,
      fontWeight: FontWeight.bold,
      fontFamily: 'Poppins');

  static TextStyle textStyle20fw500 = const TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.w500,
      fontFamily: 'Poppins');

  static TextStyle textStyle16fw400 = const TextStyle(
      color: Colors.white,
      fontSize: 16,
      fontWeight: FontWeight.w400,
      fontFamily: 'Poppins');

  static TextStyle textStyle14fw600 = const TextStyle(
      color: Colors.white,
      fontSize: 14,
      fontWeight: FontWeight.w600,
      fontFamily: 'Poppins');

  static Color colorBlack = const Color(0xFF131313);
  static Color colorWhite = const Color(0xFFF0F4F8);
  static Color colorDeepBlue = const Color(0xFF003459);

}
