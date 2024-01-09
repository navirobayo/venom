import 'package:flutter/material.dart';
import 'package:venom/components/offline_themes/flutter_atari_theme.dart';
import 'package:venom/components/offline_themes/flutter_monokai_theme.dart';
import 'package:tuple/tuple.dart';

class ThemeAndFontManager {
  static final ThemeAndFontManager instance = ThemeAndFontManager._internal();

  factory ThemeAndFontManager() {
    return instance;
  }

  ThemeAndFontManager._internal() {
    // Set Atari theme as the default theme when first used
    _selectedLightTheme = FlutterAtariTheme.lightTheme;
    _selectedDarkTheme =
        FlutterAtariTheme.darkTheme; // Initialize the dark theme
  }

  ThemeData? _selectedLightTheme;
  ThemeData? _selectedDarkTheme; // Initialize the dark theme

  ThemeData get selectedLightTheme =>
      _selectedLightTheme ?? FlutterAtariTheme.lightTheme;
  ThemeData get selectedDarkTheme =>
      _selectedDarkTheme ?? FlutterAtariTheme.darkTheme;

  void setTheme(Tuple2<ThemeData, ThemeData> themes) {
    _selectedLightTheme = themes.item1;
    _selectedDarkTheme = themes.item2;
  }

  Tuple2<ThemeData, ThemeData> _getThemeByName(String themeName) {
    if (themeName == 'Atari') {
      return Tuple2(FlutterAtariTheme.lightTheme, FlutterAtariTheme.darkTheme);
    } else if (themeName == 'Monokai') {
      return Tuple2(
          FlutterMonokaiTheme.lightTheme, FlutterMonokaiTheme.darkTheme);
    } else {
      return Tuple2(FlutterAtariTheme.lightTheme, FlutterAtariTheme.darkTheme);
    }
  }
}
