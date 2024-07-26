import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData of(BuildContext context) {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
      fontFamily: 'OpenSans',
      textTheme: const TextTheme(
        headlineLarge: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 24.0,
        ),
        headlineMedium: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 20.0,
        ),
        bodyLarge: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 24.0,
        ),
        bodyMedium: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 20.0,
        ),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        border: OutlineInputBorder(),
      ),
    );
  }
}
