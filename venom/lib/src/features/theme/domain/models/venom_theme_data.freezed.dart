// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'venom_theme_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VenomThemeData _$VenomThemeDataFromJson(Map<String, dynamic> json) {
  return Venom_ThemeData.fromJson(json);
}

/// @nodoc
mixin _$VenomThemeData {
  @HiveField(0, defaultValue: 0)
  int get themeMode => throw _privateConstructorUsedError;
  @HiveField(1, defaultValue: 0xffffffff)
  int get colorTheme => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VenomThemeDataCopyWith<VenomThemeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VenomThemeDataCopyWith<$Res> {
  factory $VenomThemeDataCopyWith(
          VenomThemeData value, $Res Function(VenomThemeData) then) =
      _$VenomThemeDataCopyWithImpl<$Res, VenomThemeData>;
  @useResult
  $Res call(
      {@HiveField(0, defaultValue: 0) int themeMode,
      @HiveField(1, defaultValue: 0xffffffff) int colorTheme});
}

/// @nodoc
class _$VenomThemeDataCopyWithImpl<$Res, $Val extends VenomThemeData>
    implements $VenomThemeDataCopyWith<$Res> {
  _$VenomThemeDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? colorTheme = null,
  }) {
    return _then(_value.copyWith(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as int,
      colorTheme: null == colorTheme
          ? _value.colorTheme
          : colorTheme // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Venom_ThemeDataCopyWith<$Res>
    implements $VenomThemeDataCopyWith<$Res> {
  factory _$$Venom_ThemeDataCopyWith(
          _$Venom_ThemeData value, $Res Function(_$Venom_ThemeData) then) =
      __$$Venom_ThemeDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0, defaultValue: 0) int themeMode,
      @HiveField(1, defaultValue: 0xffffffff) int colorTheme});
}

/// @nodoc
class __$$Venom_ThemeDataCopyWithImpl<$Res>
    extends _$VenomThemeDataCopyWithImpl<$Res, _$Venom_ThemeData>
    implements _$$Venom_ThemeDataCopyWith<$Res> {
  __$$Venom_ThemeDataCopyWithImpl(
      _$Venom_ThemeData _value, $Res Function(_$Venom_ThemeData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? colorTheme = null,
  }) {
    return _then(_$Venom_ThemeData(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as int,
      colorTheme: null == colorTheme
          ? _value.colorTheme
          : colorTheme // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Venom_ThemeData implements Venom_ThemeData {
  _$Venom_ThemeData(
      {@HiveField(0, defaultValue: 0) this.themeMode = 0,
      @HiveField(1, defaultValue: 0xffffffff) this.colorTheme = 0xffffffff});

  factory _$Venom_ThemeData.fromJson(Map<String, dynamic> json) =>
      _$$Venom_ThemeDataFromJson(json);

  @override
  @JsonKey()
  @HiveField(0, defaultValue: 0)
  final int themeMode;
  @override
  @JsonKey()
  @HiveField(1, defaultValue: 0xffffffff)
  final int colorTheme;

  @override
  String toString() {
    return 'VenomThemeData(themeMode: $themeMode, colorTheme: $colorTheme)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Venom_ThemeData &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode) &&
            (identical(other.colorTheme, colorTheme) ||
                other.colorTheme == colorTheme));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, themeMode, colorTheme);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Venom_ThemeDataCopyWith<_$Venom_ThemeData> get copyWith =>
      __$$Venom_ThemeDataCopyWithImpl<_$Venom_ThemeData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Venom_ThemeDataToJson(
      this,
    );
  }
}

abstract class Venom_ThemeData implements VenomThemeData {
  factory Venom_ThemeData(
          {@HiveField(0, defaultValue: 0) final int themeMode,
          @HiveField(1, defaultValue: 0xffffffff) final int colorTheme}) =
      _$Venom_ThemeData;

  factory Venom_ThemeData.fromJson(Map<String, dynamic> json) =
      _$Venom_ThemeData.fromJson;

  @override
  @HiveField(0, defaultValue: 0)
  int get themeMode;
  @override
  @HiveField(1, defaultValue: 0xffffffff)
  int get colorTheme;
  @override
  @JsonKey(ignore: true)
  _$$Venom_ThemeDataCopyWith<_$Venom_ThemeData> get copyWith =>
      throw _privateConstructorUsedError;
}
