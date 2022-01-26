import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.orange;

  static final ThemeData appThemeData = ThemeData.light().copyWith(
      primaryColor: primary,
      appBarTheme: const AppBarTheme(color: primary),
      textButtonTheme:
          TextButtonThemeData(style: TextButton.styleFrom(primary: primary)));
}
