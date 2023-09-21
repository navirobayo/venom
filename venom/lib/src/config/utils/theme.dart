// This file is not being used at the moment.
// This still needs to be implemented in the app.

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  AppTheme._();

  static const _primaryColorLight = Colors.white;

  static const _primaryColorDark = Colors.black;

  static final ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
          seedColor: AppTheme._primaryColorLight, brightness: Brightness.dark,),
      textTheme:
          GoogleFonts.chakraPetchTextTheme().apply(bodyColor: Colors.white),);

  static final ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
          seedColor: AppTheme._primaryColorDark, brightness: Brightness.dark,),
      textTheme:
          GoogleFonts.chakraPetchTextTheme().apply(bodyColor: Colors.white),);
}
