import 'package:flutter/material.dart';

class AppTheme {
  static theme() {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.lightBlue[800],
      fontFamily: 'Georgia',
      textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          titleLarge: TextStyle(fontSize: 22.0, fontFamily: 'latobold', fontWeight: FontWeight.w300, color: Color(0xFF141515)),
          bodyMedium: TextStyle(fontSize: 18.0, fontFamily: 'robotolight', fontWeight: FontWeight.w300),
          bodyLarge: TextStyle(color: Color(0xFF3C3A3A))),
    );
  }

  static buttonTheme() {
    return const ButtonThemeData(
      buttonColor: Color(0xFFCCDBDC),
    );
  }
}
