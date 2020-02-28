import 'package:flutter/material.dart';

const brightness = Brightness.light;
const primaryColor = const Color(0xFF00C569);
const lightColor = const Color(0xFFFFFFFF);
const backgroundColor = const Color(0xFFF5F5F5);

ThemeData lightTheme() {
  return ThemeData(
      backgroundColor: backgroundColor,
      brightness: brightness,
      primaryColor: primaryColor,
      accentColor: Colors.white,
      textTheme: TextTheme(
        body1: TextStyle(),
        //headline: TextStyle(fontSize: 24),
      ));
}
