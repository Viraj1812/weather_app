import 'package:flutter/material.dart';
import 'package:whether_app/theme/theme.dart';
import 'package:whether_app/ui/splash_screen.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeConfig.lightTheme(),
      darkTheme: ThemeConfig.darkTheme(),
      home: const SplashScreen(),
    ),
  );
}
