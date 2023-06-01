import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venom/presentation/splash_screen/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme:
            GoogleFonts.chakraPetchTextTheme(Theme.of(context).textTheme),
        brightness: Brightness.dark,
      ),
      darkTheme: ThemeData(
        textTheme: GoogleFonts.chakraPetchTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white),
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.dark,
      home: WelcomeScreen(),
    );
  }
}
