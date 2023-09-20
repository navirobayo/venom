part of 'set_theme_bloc.dart';

@freezed
class SetThemeState with _$SetThemeState {
  const factory SetThemeState.idle({ThemeMode? themeMode, Color? themeColor}) =
      _Idle;
}
