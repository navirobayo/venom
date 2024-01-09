import 'package:flutter/material.dart';
import 'package:tuple/tuple.dart';
import 'package:venom/components/offline_themes/flutter_atari_theme.dart';
import 'package:venom/components/offline_themes/flutter_monokai_theme.dart';
import 'package:venom/components/theme_and_font_manager/theme_and_font_manager.dart';
import 'package:venom/main.dart';

class ThemeAndFontPicker extends StatefulWidget {
  const ThemeAndFontPicker({
    Key? key,
  }) : super(key: key);

  @override
  _ThemeAndFontPickerState createState() => _ThemeAndFontPickerState();
}

class _ThemeAndFontPickerState extends State<ThemeAndFontPicker> {
  final themeAndFontManager = ThemeAndFontManager.instance;

  void _saveTheme(Tuple2<ThemeData, ThemeData> selectedThemes) {
    themeAndFontManager.setTheme(selectedThemes);
    runApp(MyApp());
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme Picker'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Select a theme:',
            ),
          ),
          ListTile(
            title: Text('Monokai'),
            leading: Radio(
              value: Tuple2(
                FlutterMonokaiTheme.lightTheme,
                FlutterMonokaiTheme.darkTheme,
              ),
              groupValue: Tuple2(
                themeAndFontManager.selectedLightTheme,
                themeAndFontManager.selectedDarkTheme,
              ),
              onChanged: (Tuple2<ThemeData, ThemeData>? value) {
                if (value != null) {
                  setState(() {
                    final selectedThemes = value;
                    _saveTheme(selectedThemes);
                  });
                }
              },
            ),
          ),
          ListTile(
            title: Text('Atari'),
            leading: Radio(
              value: Tuple2(
                FlutterAtariTheme.lightTheme,
                FlutterAtariTheme.darkTheme,
              ),
              groupValue: Tuple2(
                themeAndFontManager.selectedLightTheme,
                themeAndFontManager.selectedDarkTheme,
              ),
              onChanged: (Tuple2<ThemeData, ThemeData>? value) {
                if (value != null) {
                  setState(() {
                    final selectedThemes = value;
                    _saveTheme(selectedThemes);
                  });
                }
              },
            ),
          ),
          ElevatedButton(
              onPressed: () {
                final selectedThemes = Tuple2(
                  themeAndFontManager.selectedLightTheme,
                  themeAndFontManager.selectedDarkTheme,
                );
                _saveTheme(selectedThemes);
              },
              child: Text('Save')),
        ],
      ),
    );
  }
}
