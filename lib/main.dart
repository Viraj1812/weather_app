import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whether_app/provider/theme_provider.dart';
import 'package:whether_app/theme/dark_theme.dart';
import 'package:whether_app/theme/light_theme.dart';
import 'package:whether_app/ui/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeNotifier(),
      child: Consumer<ThemeNotifier>(
        builder: (context, ThemeNotifier notifier, child) {
          return MaterialApp(
            theme: notifier.darkTheme ? darkTheme : lightTheme,
            home: const SplashScreen(),
          );
        },
      ),
    );
  }
}
