import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'venom_theme_data.freezed.dart';
part 'venom_theme_data.g.dart';

@Freezed(
  makeCollectionsUnmodifiable: true,
  copyWith: true,
  fromJson: true,
  toJson: true,
  equal: true,
)

///
@HiveType(typeId: 7)
class VenomThemeData with _$VenomThemeData {
  ///
  factory VenomThemeData({
    @HiveField(0, defaultValue: 0) @Default(0) int themeMode,
    @HiveField(1, defaultValue: 0xffffffff) @Default(0xffffffff) int colorTheme,
  }) = Venom_ThemeData;

  ///
  factory VenomThemeData.fromJson(Map<String, Object?> json) =>
      _$VenomThemeDataFromJson(json);
}
