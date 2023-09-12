import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venom/components/flutter_monokai_theme.dart';
import 'package:venom/presentation/welcome_screen/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Venom Beta',
      theme: FlutterMonokaiTheme.lightTheme,
      darkTheme: FlutterMonokaiTheme.darkTheme,
      themeMode: ThemeMode.dark,
      home: WelcomeScreen(),
    );
  }
}
