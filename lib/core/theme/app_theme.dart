import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,

    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.blue,
    ),

    scaffoldBackgroundColor: const Color(0xffF5F7FA),

    appBarTheme: const AppBarTheme(
      centerTitle: true,
      elevation: 0,
    ),

    cardTheme: const CardThemeData(
      elevation: 2,
      margin: EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 6,
      ),
    ),
  );
}