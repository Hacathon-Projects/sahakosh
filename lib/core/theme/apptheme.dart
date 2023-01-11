import 'package:flutter/material.dart';

class AppTheme {
  static theme() {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.lightBlue[800],
      fontFamily: 'Georgia',
      appBarTheme: const AppBarTheme(color: Color(0xFF1580E2), titleTextStyle: TextStyle(fontSize: 28, fontFamily: "latobold")),
      textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
          titleLarge: TextStyle(fontSize: 22.0, fontFamily: 'latobold', fontWeight: FontWeight.w300, color: Color(0xFF141515)),
          bodyMedium: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w100),
          bodyLarge: TextStyle(color: Color(0xFF3C3A3A))),
    );
  }

  static buttonTheme() {
    return const ButtonThemeData(
      buttonColor: Color(0xFFCCDBDC),
    );
  }
}
