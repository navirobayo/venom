// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_ride_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewRideState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isStarted, Vehicle defaultVehicle, Price defaultPrice)
        idle,
    required TResult Function(String message, RideFailure failure) failure,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool isStarted, Vehicle defaultVehicle, Price defaultPrice)?
        idle,
    TResult? Function(String message, RideFailure failure)? failure,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isStarted, Vehicle defaultVehicle, Price defaultPrice)?
        idle,
    TResult Function(String message, RideFailure failure)? failure,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Loading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewRideStateCopyWith<$Res> {
  factory $NewRideStateCopyWith(
          NewRideState value, $Res Function(NewRideState) then) =
      _$NewRideStateCopyWithImpl<$Res, NewRideState>;
}

/// @nodoc
class _$NewRideStateCopyWithImpl<$Res, $Val extends NewRideState>
    implements $NewRideStateCopyWith<$Res> {
  _$NewRideStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_IdleCopyWith<$Res> {
  factory _$$_IdleCopyWith(_$_Idle value, $Res Function(_$_Idle) then) =
      __$$_IdleCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isStarted, Vehicle defaultVehicle, Price defaultPrice});

  $VehicleCopyWith<$Res> get defaultVehicle;
  $PriceCopyWith<$Res> get defaultPrice;
}

/// @nodoc
class __$$_IdleCopyWithImpl<$Res>
    extends _$NewRideStateCopyWithImpl<$Res, _$_Idle>
    implements _$$_IdleCopyWith<$Res> {
  __$$_IdleCopyWithImpl(_$_Idle _value, $Res Function(_$_Idle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isStarted = null,
    Object? defaultVehicle = null,
    Object? defaultPrice = null,
  }) {
    return _then(_$_Idle(
      null == isStarted
          ? _value.isStarted
          : isStarted // ignore: cast_nullable_to_non_nullable
              as bool,
      null == defaultVehicle
          ? _value.defaultVehicle
          : defaultVehicle // ignore: cast_nullable_to_non_nullable
              as Vehicle,
      null == defaultPrice
          ? _value.defaultPrice
          : defaultPrice // ignore: cast_nullable_to_non_nullable
              as Price,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $VehicleCopyWith<$Res> get defaultVehicle {
    return $VehicleCopyWith<$Res>(_value.defaultVehicle, (value) {
      return _then(_value.copyWith(defaultVehicle: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PriceCopyWith<$Res> get defaultPrice {
    return $PriceCopyWith<$Res>(_value.defaultPrice, (value) {
      return _then(_value.copyWith(defaultPrice: value));
    });
  }
}

/// @nodoc

class _$_Idle implements _Idle {
  const _$_Idle(this.isStarted, this.defaultVehicle, this.defaultPrice);

  @override
  final bool isStarted;
  @override
  final Vehicle defaultVehicle;
  @override
  final Price defaultPrice;

  @override
  String toString() {
    return 'NewRideState.idle(isStarted: $isStarted, defaultVehicle: $defaultVehicle, defaultPrice: $defaultPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Idle &&
            (identical(other.isStarted, isStarted) ||
                other.isStarted == isStarted) &&
            (identical(other.defaultVehicle, defaultVehicle) ||
                other.defaultVehicle == defaultVehicle) &&
            (identical(other.defaultPrice, defaultPrice) ||
                other.defaultPrice == defaultPrice));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isStarted, defaultVehicle, defaultPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IdleCopyWith<_$_Idle> get copyWith =>
      __$$_IdleCopyWithImpl<_$_Idle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isStarted, Vehicle defaultVehicle, Price defaultPrice)
        idle,
    required TResult Function(String message, RideFailure failure) failure,
    required TResult Function() loading,
  }) {
    return idle(isStarted, defaultVehicle, defaultPrice);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool isStarted, Vehicle defaultVehicle, Price defaultPrice)?
        idle,
    TResult? Function(String message, RideFailure failure)? failure,
    TResult? Function()? loading,
  }) {
    return idle?.call(isStarted, defaultVehicle, defaultPrice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isStarted, Vehicle defaultVehicle, Price defaultPrice)?
        idle,
    TResult Function(String message, RideFailure failure)? failure,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(isStarted, defaultVehicle, defaultPrice);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loading value) loading,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Loading value)? loading,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _Idle implements NewRideState {
  const factory _Idle(final bool isStarted, final Vehicle defaultVehicle,
      final Price defaultPrice) = _$_Idle;

  bool get isStarted;
  Vehicle get defaultVehicle;
  Price get defaultPrice;
  @JsonKey(ignore: true)
  _$$_IdleCopyWith<_$_Idle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, RideFailure failure});

  $RideFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res>
    extends _$NewRideStateCopyWithImpl<$Res, _$_Failure>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? failure = null,
  }) {
    return _then(_$_Failure(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as RideFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RideFailureCopyWith<$Res> get failure {
    return $RideFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure(this.message, this.failure);

  @override
  final String message;
  @override
  final RideFailure failure;

  @override
  String toString() {
    return 'NewRideState.failure(message: $message, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failure &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      __$$_FailureCopyWithImpl<_$_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isStarted, Vehicle defaultVehicle, Price defaultPrice)
        idle,
    required TResult Function(String message, RideFailure failure) failure,
    required TResult Function() loading,
  }) {
    return failure(message, this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool isStarted, Vehicle defaultVehicle, Price defaultPrice)?
        idle,
    TResult? Function(String message, RideFailure failure)? failure,
    TResult? Function()? loading,
  }) {
    return failure?.call(message, this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isStarted, Vehicle defaultVehicle, Price defaultPrice)?
        idle,
    TResult Function(String message, RideFailure failure)? failure,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message, this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loading value) loading,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Loading value)? loading,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements NewRideState {
  const factory _Failure(final String message, final RideFailure failure) =
      _$_Failure;

  String get message;
  RideFailure get failure;
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$NewRideStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'NewRideState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isStarted, Vehicle defaultVehicle, Price defaultPrice)
        idle,
    required TResult Function(String message, RideFailure failure) failure,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool isStarted, Vehicle defaultVehicle, Price defaultPrice)?
        idle,
    TResult? Function(String message, RideFailure failure)? failure,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isStarted, Vehicle defaultVehicle, Price defaultPrice)?
        idle,
    TResult Function(String message, RideFailure failure)? failure,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Loading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Failure value)? failure,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements NewRideState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
mixin _$NewRideEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startTimer,
    required TResult Function() getVehicleData,
    required TResult Function() getPriceData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startTimer,
    TResult? Function()? getVehicleData,
    TResult? Function()? getPriceData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startTimer,
    TResult Function()? getVehicleData,
    TResult Function()? getPriceData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartTimer value) startTimer,
    required TResult Function(_GetVehicleData value) getVehicleData,
    required TResult Function(_GetPriceData value) getPriceData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartTimer value)? startTimer,
    TResult? Function(_GetVehicleData value)? getVehicleData,
    TResult? Function(_GetPriceData value)? getPriceData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartTimer value)? startTimer,
    TResult Function(_GetVehicleData value)? getVehicleData,
    TResult Function(_GetPriceData value)? getPriceData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewRideEventCopyWith<$Res> {
  factory $NewRideEventCopyWith(
          NewRideEvent value, $Res Function(NewRideEvent) then) =
      _$NewRideEventCopyWithImpl<$Res, NewRideEvent>;
}

/// @nodoc
class _$NewRideEventCopyWithImpl<$Res, $Val extends NewRideEvent>
    implements $NewRideEventCopyWith<$Res> {
  _$NewRideEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartTimerCopyWith<$Res> {
  factory _$$_StartTimerCopyWith(
          _$_StartTimer value, $Res Function(_$_StartTimer) then) =
      __$$_StartTimerCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartTimerCopyWithImpl<$Res>
    extends _$NewRideEventCopyWithImpl<$Res, _$_StartTimer>
    implements _$$_StartTimerCopyWith<$Res> {
  __$$_StartTimerCopyWithImpl(
      _$_StartTimer _value, $Res Function(_$_StartTimer) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_StartTimer implements _StartTimer {
  const _$_StartTimer();

  @override
  String toString() {
    return 'NewRideEvent.startTimer()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_StartTimer);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startTimer,
    required TResult Function() getVehicleData,
    required TResult Function() getPriceData,
  }) {
    return startTimer();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startTimer,
    TResult? Function()? getVehicleData,
    TResult? Function()? getPriceData,
  }) {
    return startTimer?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startTimer,
    TResult Function()? getVehicleData,
    TResult Function()? getPriceData,
    required TResult orElse(),
  }) {
    if (startTimer != null) {
      return startTimer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartTimer value) startTimer,
    required TResult Function(_GetVehicleData value) getVehicleData,
    required TResult Function(_GetPriceData value) getPriceData,
  }) {
    return startTimer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartTimer value)? startTimer,
    TResult? Function(_GetVehicleData value)? getVehicleData,
    TResult? Function(_GetPriceData value)? getPriceData,
  }) {
    return startTimer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartTimer value)? startTimer,
    TResult Function(_GetVehicleData value)? getVehicleData,
    TResult Function(_GetPriceData value)? getPriceData,
    required TResult orElse(),
  }) {
    if (startTimer != null) {
      return startTimer(this);
    }
    return orElse();
  }
}

abstract class _StartTimer implements NewRideEvent {
  const factory _StartTimer() = _$_StartTimer;
}

/// @nodoc
abstract class _$$_GetVehicleDataCopyWith<$Res> {
  factory _$$_GetVehicleDataCopyWith(
          _$_GetVehicleData value, $Res Function(_$_GetVehicleData) then) =
      __$$_GetVehicleDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetVehicleDataCopyWithImpl<$Res>
    extends _$NewRideEventCopyWithImpl<$Res, _$_GetVehicleData>
    implements _$$_GetVehicleDataCopyWith<$Res> {
  __$$_GetVehicleDataCopyWithImpl(
      _$_GetVehicleData _value, $Res Function(_$_GetVehicleData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetVehicleData implements _GetVehicleData {
  const _$_GetVehicleData();

  @override
  String toString() {
    return 'NewRideEvent.getVehicleData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetVehicleData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startTimer,
    required TResult Function() getVehicleData,
    required TResult Function() getPriceData,
  }) {
    return getVehicleData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startTimer,
    TResult? Function()? getVehicleData,
    TResult? Function()? getPriceData,
  }) {
    return getVehicleData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startTimer,
    TResult Function()? getVehicleData,
    TResult Function()? getPriceData,
    required TResult orElse(),
  }) {
    if (getVehicleData != null) {
      return getVehicleData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartTimer value) startTimer,
    required TResult Function(_GetVehicleData value) getVehicleData,
    required TResult Function(_GetPriceData value) getPriceData,
  }) {
    return getVehicleData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartTimer value)? startTimer,
    TResult? Function(_GetVehicleData value)? getVehicleData,
    TResult? Function(_GetPriceData value)? getPriceData,
  }) {
    return getVehicleData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartTimer value)? startTimer,
    TResult Function(_GetVehicleData value)? getVehicleData,
    TResult Function(_GetPriceData value)? getPriceData,
    required TResult orElse(),
  }) {
    if (getVehicleData != null) {
      return getVehicleData(this);
    }
    return orElse();
  }
}

abstract class _GetVehicleData implements NewRideEvent {
  const factory _GetVehicleData() = _$_GetVehicleData;
}

/// @nodoc
abstract class _$$_GetPriceDataCopyWith<$Res> {
  factory _$$_GetPriceDataCopyWith(
          _$_GetPriceData value, $Res Function(_$_GetPriceData) then) =
      __$$_GetPriceDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetPriceDataCopyWithImpl<$Res>
    extends _$NewRideEventCopyWithImpl<$Res, _$_GetPriceData>
    implements _$$_GetPriceDataCopyWith<$Res> {
  __$$_GetPriceDataCopyWithImpl(
      _$_GetPriceData _value, $Res Function(_$_GetPriceData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetPriceData implements _GetPriceData {
  const _$_GetPriceData();

  @override
  String toString() {
    return 'NewRideEvent.getPriceData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetPriceData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startTimer,
    required TResult Function() getVehicleData,
    required TResult Function() getPriceData,
  }) {
    return getPriceData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startTimer,
    TResult? Function()? getVehicleData,
    TResult? Function()? getPriceData,
  }) {
    return getPriceData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startTimer,
    TResult Function()? getVehicleData,
    TResult Function()? getPriceData,
    required TResult orElse(),
  }) {
    if (getPriceData != null) {
      return getPriceData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartTimer value) startTimer,
    required TResult Function(_GetVehicleData value) getVehicleData,
    required TResult Function(_GetPriceData value) getPriceData,
  }) {
    return getPriceData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartTimer value)? startTimer,
    TResult? Function(_GetVehicleData value)? getVehicleData,
    TResult? Function(_GetPriceData value)? getPriceData,
  }) {
    return getPriceData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartTimer value)? startTimer,
    TResult Function(_GetVehicleData value)? getVehicleData,
    TResult Function(_GetPriceData value)? getPriceData,
    required TResult orElse(),
  }) {
    if (getPriceData != null) {
      return getPriceData(this);
    }
    return orElse();
  }
}

abstract class _GetPriceData implements NewRideEvent {
  const factory _GetPriceData() = _$_GetPriceData;
}
