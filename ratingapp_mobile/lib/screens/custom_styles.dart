import 'package:flutter/material.dart';

class CustomStyles {
  static InputDecoration inputDecoration = InputDecoration(
    contentPadding: const EdgeInsets.all(20),
    filled: true,
    fillColor: const Color(0xFF003366).withOpacity(0.2),
    labelText: '',
    labelStyle: const TextStyle(
      color: Colors.white,
      fontSize: 16,
      fontWeight: FontWeight.w400,
      fontFamily: 'Poppins',
    ),
    border: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(color: Color(0xFF003459), width: 2.0),
    ),
    focusedBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(color: Color(0xFF003459), width: 2.0),
    ),
    enabledBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(color: Color(0xFF003459), width: 2.0),
    ),
    errorBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(color: Color(0xFF003459), width: 2.0),
    ),
    focusedErrorBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(color: Color(0xFF003459), width: 2.0),
    ),
  );
}
