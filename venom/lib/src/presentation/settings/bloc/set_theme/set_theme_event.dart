part of 'set_theme_bloc.dart';

@freezed
class SetThemeEvent with _$SetThemeEvent {
  factory SetThemeEvent.setTheme(ThemeMode? themeMode) = _SetTheme;
  factory SetThemeEvent.changeThemeColor(Color? themeColor) = _ChangeThemeColor;
  factory SetThemeEvent.getCachedTheme() = _GetCachedTheme;
}
