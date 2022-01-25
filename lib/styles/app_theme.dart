import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.deepPurple;

  static final ThemeData appThemeData = ThemeData.light().copyWith(
      primaryColor: primary, appBarTheme: const AppBarTheme(color: primary));
}
