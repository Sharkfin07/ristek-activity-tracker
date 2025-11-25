import 'package:flutter/material.dart';

class AppTheme {
  // Color Variables
  static const Color background = Color(0xFF5038BC);
  static const Color positive = Color(0xFF20C000);
  static const Color negative = Color(0xFFEE4545);

  static final ThemeData themeData = ThemeData(
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    scaffoldBackgroundColor: background,
    colorScheme: ColorScheme.fromSeed(
      seedColor: background,
      primary: background,
      secondary: positive,
      error: negative,
      brightness: Brightness.dark,
    ),
  );
}
