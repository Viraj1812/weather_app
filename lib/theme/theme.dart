import 'package:flutter/material.dart';

class ThemeConfig {
  static bool isDarkTheme = false;
  static Function(bool) onThemeChanged = (bool isDark) {};

  static ThemeData lightTheme() {
    return ThemeData.light().copyWith(
      primaryColor: Colors.white,
      hintColor: Colors.black,
      scaffoldBackgroundColor: Colors.white,
      cardTheme: const CardTheme(
        color: Colors.white,
      ),
    );
  }

  static ThemeData darkTheme() {
    return ThemeData.dark().copyWith(
      primaryColor: Colors.black,
      hintColor: Colors.white,
      cardTheme: const CardTheme(
        color: Color.fromRGBO(66, 66, 66, 1),
      ),
      scaffoldBackgroundColor: Colors.black,
    );
  }

  static void applyTheme(ThemeData themeData) {
    isDarkTheme = themeData == darkTheme();
    onThemeChanged(isDarkTheme);
  }
}
