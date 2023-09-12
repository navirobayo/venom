import 'package:flutter/material.dart';
import 'package:venom/components/theme_and_font_manager/theme_and_font_manager.dart';
import 'package:venom/presentation/welcome_screen/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    final themeAndFontManager = ThemeAndFontManager.instance;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Venom 2.0.0',
      theme: themeAndFontManager.selectedLightTheme,
      darkTheme: themeAndFontManager.selectedDarkTheme,
      themeMode: ThemeMode.system, // Use system settings for light/dark mode
      home: WelcomeScreen(),
    );
  }
}
