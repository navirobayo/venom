// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_theme_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SetThemeState {
  ThemeMode? get themeMode => throw _privateConstructorUsedError;
  Color? get themeColor => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeMode? themeMode, Color? themeColor) idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeMode? themeMode, Color? themeColor)? idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeMode? themeMode, Color? themeColor)? idle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SetThemeStateCopyWith<SetThemeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetThemeStateCopyWith<$Res> {
  factory $SetThemeStateCopyWith(
          SetThemeState value, $Res Function(SetThemeState) then) =
      _$SetThemeStateCopyWithImpl<$Res, SetThemeState>;
  @useResult
  $Res call({ThemeMode? themeMode, Color? themeColor});
}

/// @nodoc
class _$SetThemeStateCopyWithImpl<$Res, $Val extends SetThemeState>
    implements $SetThemeStateCopyWith<$Res> {
  _$SetThemeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = freezed,
    Object? themeColor = freezed,
  }) {
    return _then(_value.copyWith(
      themeMode: freezed == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode?,
      themeColor: freezed == themeColor
          ? _value.themeColor
          : themeColor // ignore: cast_nullable_to_non_nullable
              as Color?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IdleCopyWith<$Res> implements $SetThemeStateCopyWith<$Res> {
  factory _$$_IdleCopyWith(_$_Idle value, $Res Function(_$_Idle) then) =
      __$$_IdleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ThemeMode? themeMode, Color? themeColor});
}

/// @nodoc
class __$$_IdleCopyWithImpl<$Res>
    extends _$SetThemeStateCopyWithImpl<$Res, _$_Idle>
    implements _$$_IdleCopyWith<$Res> {
  __$$_IdleCopyWithImpl(_$_Idle _value, $Res Function(_$_Idle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = freezed,
    Object? themeColor = freezed,
  }) {
    return _then(_$_Idle(
      themeMode: freezed == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode?,
      themeColor: freezed == themeColor
          ? _value.themeColor
          : themeColor // ignore: cast_nullable_to_non_nullable
              as Color?,
    ));
  }
}

/// @nodoc

class _$_Idle implements _Idle {
  const _$_Idle({this.themeMode, this.themeColor});

  @override
  final ThemeMode? themeMode;
  @override
  final Color? themeColor;

  @override
  String toString() {
    return 'SetThemeState.idle(themeMode: $themeMode, themeColor: $themeColor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Idle &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode) &&
            (identical(other.themeColor, themeColor) ||
                other.themeColor == themeColor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeMode, themeColor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IdleCopyWith<_$_Idle> get copyWith =>
      __$$_IdleCopyWithImpl<_$_Idle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeMode? themeMode, Color? themeColor) idle,
  }) {
    return idle(themeMode, themeColor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeMode? themeMode, Color? themeColor)? idle,
  }) {
    return idle?.call(themeMode, themeColor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeMode? themeMode, Color? themeColor)? idle,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(themeMode, themeColor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _Idle implements SetThemeState {
  const factory _Idle({final ThemeMode? themeMode, final Color? themeColor}) =
      _$_Idle;

  @override
  ThemeMode? get themeMode;
  @override
  Color? get themeColor;
  @override
  @JsonKey(ignore: true)
  _$$_IdleCopyWith<_$_Idle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SetThemeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeMode? themeMode) setTheme,
    required TResult Function(Color? themeColor) changeThemeColor,
    required TResult Function() getCachedTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeMode? themeMode)? setTheme,
    TResult? Function(Color? themeColor)? changeThemeColor,
    TResult? Function()? getCachedTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeMode? themeMode)? setTheme,
    TResult Function(Color? themeColor)? changeThemeColor,
    TResult Function()? getCachedTheme,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetTheme value) setTheme,
    required TResult Function(_ChangeThemeColor value) changeThemeColor,
    required TResult Function(_GetCachedTheme value) getCachedTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetTheme value)? setTheme,
    TResult? Function(_ChangeThemeColor value)? changeThemeColor,
    TResult? Function(_GetCachedTheme value)? getCachedTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetTheme value)? setTheme,
    TResult Function(_ChangeThemeColor value)? changeThemeColor,
    TResult Function(_GetCachedTheme value)? getCachedTheme,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetThemeEventCopyWith<$Res> {
  factory $SetThemeEventCopyWith(
          SetThemeEvent value, $Res Function(SetThemeEvent) then) =
      _$SetThemeEventCopyWithImpl<$Res, SetThemeEvent>;
}

/// @nodoc
class _$SetThemeEventCopyWithImpl<$Res, $Val extends SetThemeEvent>
    implements $SetThemeEventCopyWith<$Res> {
  _$SetThemeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SetThemeCopyWith<$Res> {
  factory _$$_SetThemeCopyWith(
          _$_SetTheme value, $Res Function(_$_SetTheme) then) =
      __$$_SetThemeCopyWithImpl<$Res>;
  @useResult
  $Res call({ThemeMode? themeMode});
}

/// @nodoc
class __$$_SetThemeCopyWithImpl<$Res>
    extends _$SetThemeEventCopyWithImpl<$Res, _$_SetTheme>
    implements _$$_SetThemeCopyWith<$Res> {
  __$$_SetThemeCopyWithImpl(
      _$_SetTheme _value, $Res Function(_$_SetTheme) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = freezed,
  }) {
    return _then(_$_SetTheme(
      freezed == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode?,
    ));
  }
}

/// @nodoc

class _$_SetTheme implements _SetTheme {
  _$_SetTheme(this.themeMode);

  @override
  final ThemeMode? themeMode;

  @override
  String toString() {
    return 'SetThemeEvent.setTheme(themeMode: $themeMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetTheme &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetThemeCopyWith<_$_SetTheme> get copyWith =>
      __$$_SetThemeCopyWithImpl<_$_SetTheme>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeMode? themeMode) setTheme,
    required TResult Function(Color? themeColor) changeThemeColor,
    required TResult Function() getCachedTheme,
  }) {
    return setTheme(themeMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeMode? themeMode)? setTheme,
    TResult? Function(Color? themeColor)? changeThemeColor,
    TResult? Function()? getCachedTheme,
  }) {
    return setTheme?.call(themeMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeMode? themeMode)? setTheme,
    TResult Function(Color? themeColor)? changeThemeColor,
    TResult Function()? getCachedTheme,
    required TResult orElse(),
  }) {
    if (setTheme != null) {
      return setTheme(themeMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetTheme value) setTheme,
    required TResult Function(_ChangeThemeColor value) changeThemeColor,
    required TResult Function(_GetCachedTheme value) getCachedTheme,
  }) {
    return setTheme(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetTheme value)? setTheme,
    TResult? Function(_ChangeThemeColor value)? changeThemeColor,
    TResult? Function(_GetCachedTheme value)? getCachedTheme,
  }) {
    return setTheme?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetTheme value)? setTheme,
    TResult Function(_ChangeThemeColor value)? changeThemeColor,
    TResult Function(_GetCachedTheme value)? getCachedTheme,
    required TResult orElse(),
  }) {
    if (setTheme != null) {
      return setTheme(this);
    }
    return orElse();
  }
}

abstract class _SetTheme implements SetThemeEvent {
  factory _SetTheme(final ThemeMode? themeMode) = _$_SetTheme;

  ThemeMode? get themeMode;
  @JsonKey(ignore: true)
  _$$_SetThemeCopyWith<_$_SetTheme> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeThemeColorCopyWith<$Res> {
  factory _$$_ChangeThemeColorCopyWith(
          _$_ChangeThemeColor value, $Res Function(_$_ChangeThemeColor) then) =
      __$$_ChangeThemeColorCopyWithImpl<$Res>;
  @useResult
  $Res call({Color? themeColor});
}

/// @nodoc
class __$$_ChangeThemeColorCopyWithImpl<$Res>
    extends _$SetThemeEventCopyWithImpl<$Res, _$_ChangeThemeColor>
    implements _$$_ChangeThemeColorCopyWith<$Res> {
  __$$_ChangeThemeColorCopyWithImpl(
      _$_ChangeThemeColor _value, $Res Function(_$_ChangeThemeColor) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeColor = freezed,
  }) {
    return _then(_$_ChangeThemeColor(
      freezed == themeColor
          ? _value.themeColor
          : themeColor // ignore: cast_nullable_to_non_nullable
              as Color?,
    ));
  }
}

/// @nodoc

class _$_ChangeThemeColor implements _ChangeThemeColor {
  _$_ChangeThemeColor(this.themeColor);

  @override
  final Color? themeColor;

  @override
  String toString() {
    return 'SetThemeEvent.changeThemeColor(themeColor: $themeColor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeThemeColor &&
            (identical(other.themeColor, themeColor) ||
                other.themeColor == themeColor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeColor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeThemeColorCopyWith<_$_ChangeThemeColor> get copyWith =>
      __$$_ChangeThemeColorCopyWithImpl<_$_ChangeThemeColor>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeMode? themeMode) setTheme,
    required TResult Function(Color? themeColor) changeThemeColor,
    required TResult Function() getCachedTheme,
  }) {
    return changeThemeColor(themeColor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeMode? themeMode)? setTheme,
    TResult? Function(Color? themeColor)? changeThemeColor,
    TResult? Function()? getCachedTheme,
  }) {
    return changeThemeColor?.call(themeColor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeMode? themeMode)? setTheme,
    TResult Function(Color? themeColor)? changeThemeColor,
    TResult Function()? getCachedTheme,
    required TResult orElse(),
  }) {
    if (changeThemeColor != null) {
      return changeThemeColor(themeColor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetTheme value) setTheme,
    required TResult Function(_ChangeThemeColor value) changeThemeColor,
    required TResult Function(_GetCachedTheme value) getCachedTheme,
  }) {
    return changeThemeColor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetTheme value)? setTheme,
    TResult? Function(_ChangeThemeColor value)? changeThemeColor,
    TResult? Function(_GetCachedTheme value)? getCachedTheme,
  }) {
    return changeThemeColor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetTheme value)? setTheme,
    TResult Function(_ChangeThemeColor value)? changeThemeColor,
    TResult Function(_GetCachedTheme value)? getCachedTheme,
    required TResult orElse(),
  }) {
    if (changeThemeColor != null) {
      return changeThemeColor(this);
    }
    return orElse();
  }
}

abstract class _ChangeThemeColor implements SetThemeEvent {
  factory _ChangeThemeColor(final Color? themeColor) = _$_ChangeThemeColor;

  Color? get themeColor;
  @JsonKey(ignore: true)
  _$$_ChangeThemeColorCopyWith<_$_ChangeThemeColor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetCachedThemeCopyWith<$Res> {
  factory _$$_GetCachedThemeCopyWith(
          _$_GetCachedTheme value, $Res Function(_$_GetCachedTheme) then) =
      __$$_GetCachedThemeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetCachedThemeCopyWithImpl<$Res>
    extends _$SetThemeEventCopyWithImpl<$Res, _$_GetCachedTheme>
    implements _$$_GetCachedThemeCopyWith<$Res> {
  __$$_GetCachedThemeCopyWithImpl(
      _$_GetCachedTheme _value, $Res Function(_$_GetCachedTheme) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetCachedTheme implements _GetCachedTheme {
  _$_GetCachedTheme();

  @override
  String toString() {
    return 'SetThemeEvent.getCachedTheme()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetCachedTheme);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeMode? themeMode) setTheme,
    required TResult Function(Color? themeColor) changeThemeColor,
    required TResult Function() getCachedTheme,
  }) {
    return getCachedTheme();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeMode? themeMode)? setTheme,
    TResult? Function(Color? themeColor)? changeThemeColor,
    TResult? Function()? getCachedTheme,
  }) {
    return getCachedTheme?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeMode? themeMode)? setTheme,
    TResult Function(Color? themeColor)? changeThemeColor,
    TResult Function()? getCachedTheme,
    required TResult orElse(),
  }) {
    if (getCachedTheme != null) {
      return getCachedTheme();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetTheme value) setTheme,
    required TResult Function(_ChangeThemeColor value) changeThemeColor,
    required TResult Function(_GetCachedTheme value) getCachedTheme,
  }) {
    return getCachedTheme(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetTheme value)? setTheme,
    TResult? Function(_ChangeThemeColor value)? changeThemeColor,
    TResult? Function(_GetCachedTheme value)? getCachedTheme,
  }) {
    return getCachedTheme?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetTheme value)? setTheme,
    TResult Function(_ChangeThemeColor value)? changeThemeColor,
    TResult Function(_GetCachedTheme value)? getCachedTheme,
    required TResult orElse(),
  }) {
    if (getCachedTheme != null) {
      return getCachedTheme(this);
    }
    return orElse();
  }
}

abstract class _GetCachedTheme implements SetThemeEvent {
  factory _GetCachedTheme() = _$_GetCachedTheme;
}
