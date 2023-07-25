// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'default_vehicle_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DefaultVehicleState {
  Vehicle? get vehicle => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Vehicle? vehicle) idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Vehicle? vehicle)? idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Vehicle? vehicle)? idle,
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
  $DefaultVehicleStateCopyWith<DefaultVehicleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DefaultVehicleStateCopyWith<$Res> {
  factory $DefaultVehicleStateCopyWith(
          DefaultVehicleState value, $Res Function(DefaultVehicleState) then) =
      _$DefaultVehicleStateCopyWithImpl<$Res, DefaultVehicleState>;
  @useResult
  $Res call({Vehicle? vehicle});

  $VehicleCopyWith<$Res>? get vehicle;
}

/// @nodoc
class _$DefaultVehicleStateCopyWithImpl<$Res, $Val extends DefaultVehicleState>
    implements $DefaultVehicleStateCopyWith<$Res> {
  _$DefaultVehicleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vehicle = freezed,
  }) {
    return _then(_value.copyWith(
      vehicle: freezed == vehicle
          ? _value.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as Vehicle?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VehicleCopyWith<$Res>? get vehicle {
    if (_value.vehicle == null) {
      return null;
    }

    return $VehicleCopyWith<$Res>(_value.vehicle!, (value) {
      return _then(_value.copyWith(vehicle: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_IdleCopyWith<$Res>
    implements $DefaultVehicleStateCopyWith<$Res> {
  factory _$$_IdleCopyWith(_$_Idle value, $Res Function(_$_Idle) then) =
      __$$_IdleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Vehicle? vehicle});

  @override
  $VehicleCopyWith<$Res>? get vehicle;
}

/// @nodoc
class __$$_IdleCopyWithImpl<$Res>
    extends _$DefaultVehicleStateCopyWithImpl<$Res, _$_Idle>
    implements _$$_IdleCopyWith<$Res> {
  __$$_IdleCopyWithImpl(_$_Idle _value, $Res Function(_$_Idle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vehicle = freezed,
  }) {
    return _then(_$_Idle(
      vehicle: freezed == vehicle
          ? _value.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as Vehicle?,
    ));
  }
}

/// @nodoc

class _$_Idle implements _Idle {
  const _$_Idle({this.vehicle});

  @override
  final Vehicle? vehicle;

  @override
  String toString() {
    return 'DefaultVehicleState.idle(vehicle: $vehicle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Idle &&
            (identical(other.vehicle, vehicle) || other.vehicle == vehicle));
  }

  @override
  int get hashCode => Object.hash(runtimeType, vehicle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IdleCopyWith<_$_Idle> get copyWith =>
      __$$_IdleCopyWithImpl<_$_Idle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Vehicle? vehicle) idle,
  }) {
    return idle(vehicle);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Vehicle? vehicle)? idle,
  }) {
    return idle?.call(vehicle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Vehicle? vehicle)? idle,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(vehicle);
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

abstract class _Idle implements DefaultVehicleState {
  const factory _Idle({final Vehicle? vehicle}) = _$_Idle;

  @override
  Vehicle? get vehicle;
  @override
  @JsonKey(ignore: true)
  _$$_IdleCopyWith<_$_Idle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DefaultVehicleEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Vehicle? vehicle) setDefaultVehicle,
    required TResult Function() readDefaultVehicle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Vehicle? vehicle)? setDefaultVehicle,
    TResult? Function()? readDefaultVehicle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Vehicle? vehicle)? setDefaultVehicle,
    TResult Function()? readDefaultVehicle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetDefaultVehicle value) setDefaultVehicle,
    required TResult Function(_ReadDefaultVehicle value) readDefaultVehicle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetDefaultVehicle value)? setDefaultVehicle,
    TResult? Function(_ReadDefaultVehicle value)? readDefaultVehicle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetDefaultVehicle value)? setDefaultVehicle,
    TResult Function(_ReadDefaultVehicle value)? readDefaultVehicle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DefaultVehicleEventCopyWith<$Res> {
  factory $DefaultVehicleEventCopyWith(
          DefaultVehicleEvent value, $Res Function(DefaultVehicleEvent) then) =
      _$DefaultVehicleEventCopyWithImpl<$Res, DefaultVehicleEvent>;
}

/// @nodoc
class _$DefaultVehicleEventCopyWithImpl<$Res, $Val extends DefaultVehicleEvent>
    implements $DefaultVehicleEventCopyWith<$Res> {
  _$DefaultVehicleEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SetDefaultVehicleCopyWith<$Res> {
  factory _$$_SetDefaultVehicleCopyWith(_$_SetDefaultVehicle value,
          $Res Function(_$_SetDefaultVehicle) then) =
      __$$_SetDefaultVehicleCopyWithImpl<$Res>;
  @useResult
  $Res call({Vehicle? vehicle});

  $VehicleCopyWith<$Res>? get vehicle;
}

/// @nodoc
class __$$_SetDefaultVehicleCopyWithImpl<$Res>
    extends _$DefaultVehicleEventCopyWithImpl<$Res, _$_SetDefaultVehicle>
    implements _$$_SetDefaultVehicleCopyWith<$Res> {
  __$$_SetDefaultVehicleCopyWithImpl(
      _$_SetDefaultVehicle _value, $Res Function(_$_SetDefaultVehicle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vehicle = freezed,
  }) {
    return _then(_$_SetDefaultVehicle(
      freezed == vehicle
          ? _value.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as Vehicle?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $VehicleCopyWith<$Res>? get vehicle {
    if (_value.vehicle == null) {
      return null;
    }

    return $VehicleCopyWith<$Res>(_value.vehicle!, (value) {
      return _then(_value.copyWith(vehicle: value));
    });
  }
}

/// @nodoc

class _$_SetDefaultVehicle implements _SetDefaultVehicle {
  _$_SetDefaultVehicle(this.vehicle);

  @override
  final Vehicle? vehicle;

  @override
  String toString() {
    return 'DefaultVehicleEvent.setDefaultVehicle(vehicle: $vehicle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetDefaultVehicle &&
            (identical(other.vehicle, vehicle) || other.vehicle == vehicle));
  }

  @override
  int get hashCode => Object.hash(runtimeType, vehicle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetDefaultVehicleCopyWith<_$_SetDefaultVehicle> get copyWith =>
      __$$_SetDefaultVehicleCopyWithImpl<_$_SetDefaultVehicle>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Vehicle? vehicle) setDefaultVehicle,
    required TResult Function() readDefaultVehicle,
  }) {
    return setDefaultVehicle(vehicle);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Vehicle? vehicle)? setDefaultVehicle,
    TResult? Function()? readDefaultVehicle,
  }) {
    return setDefaultVehicle?.call(vehicle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Vehicle? vehicle)? setDefaultVehicle,
    TResult Function()? readDefaultVehicle,
    required TResult orElse(),
  }) {
    if (setDefaultVehicle != null) {
      return setDefaultVehicle(vehicle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetDefaultVehicle value) setDefaultVehicle,
    required TResult Function(_ReadDefaultVehicle value) readDefaultVehicle,
  }) {
    return setDefaultVehicle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetDefaultVehicle value)? setDefaultVehicle,
    TResult? Function(_ReadDefaultVehicle value)? readDefaultVehicle,
  }) {
    return setDefaultVehicle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetDefaultVehicle value)? setDefaultVehicle,
    TResult Function(_ReadDefaultVehicle value)? readDefaultVehicle,
    required TResult orElse(),
  }) {
    if (setDefaultVehicle != null) {
      return setDefaultVehicle(this);
    }
    return orElse();
  }
}

abstract class _SetDefaultVehicle implements DefaultVehicleEvent {
  factory _SetDefaultVehicle(final Vehicle? vehicle) = _$_SetDefaultVehicle;

  Vehicle? get vehicle;
  @JsonKey(ignore: true)
  _$$_SetDefaultVehicleCopyWith<_$_SetDefaultVehicle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ReadDefaultVehicleCopyWith<$Res> {
  factory _$$_ReadDefaultVehicleCopyWith(_$_ReadDefaultVehicle value,
          $Res Function(_$_ReadDefaultVehicle) then) =
      __$$_ReadDefaultVehicleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ReadDefaultVehicleCopyWithImpl<$Res>
    extends _$DefaultVehicleEventCopyWithImpl<$Res, _$_ReadDefaultVehicle>
    implements _$$_ReadDefaultVehicleCopyWith<$Res> {
  __$$_ReadDefaultVehicleCopyWithImpl(
      _$_ReadDefaultVehicle _value, $Res Function(_$_ReadDefaultVehicle) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ReadDefaultVehicle implements _ReadDefaultVehicle {
  _$_ReadDefaultVehicle();

  @override
  String toString() {
    return 'DefaultVehicleEvent.readDefaultVehicle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ReadDefaultVehicle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Vehicle? vehicle) setDefaultVehicle,
    required TResult Function() readDefaultVehicle,
  }) {
    return readDefaultVehicle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Vehicle? vehicle)? setDefaultVehicle,
    TResult? Function()? readDefaultVehicle,
  }) {
    return readDefaultVehicle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Vehicle? vehicle)? setDefaultVehicle,
    TResult Function()? readDefaultVehicle,
    required TResult orElse(),
  }) {
    if (readDefaultVehicle != null) {
      return readDefaultVehicle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetDefaultVehicle value) setDefaultVehicle,
    required TResult Function(_ReadDefaultVehicle value) readDefaultVehicle,
  }) {
    return readDefaultVehicle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetDefaultVehicle value)? setDefaultVehicle,
    TResult? Function(_ReadDefaultVehicle value)? readDefaultVehicle,
  }) {
    return readDefaultVehicle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetDefaultVehicle value)? setDefaultVehicle,
    TResult Function(_ReadDefaultVehicle value)? readDefaultVehicle,
    required TResult orElse(),
  }) {
    if (readDefaultVehicle != null) {
      return readDefaultVehicle(this);
    }
    return orElse();
  }
}

abstract class _ReadDefaultVehicle implements DefaultVehicleEvent {
  factory _ReadDefaultVehicle() = _$_ReadDefaultVehicle;
}
