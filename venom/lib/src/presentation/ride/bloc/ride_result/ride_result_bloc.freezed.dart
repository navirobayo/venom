// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ride_result_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RideResultState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Ride? ride) idle,
    required TResult Function(String message, RideFailure failure) failure,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Ride? ride)? idle,
    TResult? Function(String message, RideFailure failure)? failure,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Ride? ride)? idle,
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
abstract class $RideResultStateCopyWith<$Res> {
  factory $RideResultStateCopyWith(
          RideResultState value, $Res Function(RideResultState) then) =
      _$RideResultStateCopyWithImpl<$Res, RideResultState>;
}

/// @nodoc
class _$RideResultStateCopyWithImpl<$Res, $Val extends RideResultState>
    implements $RideResultStateCopyWith<$Res> {
  _$RideResultStateCopyWithImpl(this._value, this._then);

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
  $Res call({Ride? ride});

  $RideCopyWith<$Res>? get ride;
}

/// @nodoc
class __$$_IdleCopyWithImpl<$Res>
    extends _$RideResultStateCopyWithImpl<$Res, _$_Idle>
    implements _$$_IdleCopyWith<$Res> {
  __$$_IdleCopyWithImpl(_$_Idle _value, $Res Function(_$_Idle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ride = freezed,
  }) {
    return _then(_$_Idle(
      freezed == ride
          ? _value.ride
          : ride // ignore: cast_nullable_to_non_nullable
              as Ride?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RideCopyWith<$Res>? get ride {
    if (_value.ride == null) {
      return null;
    }

    return $RideCopyWith<$Res>(_value.ride!, (value) {
      return _then(_value.copyWith(ride: value));
    });
  }
}

/// @nodoc

class _$_Idle implements _Idle {
  const _$_Idle(this.ride);

  @override
  final Ride? ride;

  @override
  String toString() {
    return 'RideResultState.idle(ride: $ride)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Idle &&
            (identical(other.ride, ride) || other.ride == ride));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ride);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IdleCopyWith<_$_Idle> get copyWith =>
      __$$_IdleCopyWithImpl<_$_Idle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Ride? ride) idle,
    required TResult Function(String message, RideFailure failure) failure,
    required TResult Function() loading,
  }) {
    return idle(ride);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Ride? ride)? idle,
    TResult? Function(String message, RideFailure failure)? failure,
    TResult? Function()? loading,
  }) {
    return idle?.call(ride);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Ride? ride)? idle,
    TResult Function(String message, RideFailure failure)? failure,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(ride);
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

abstract class _Idle implements RideResultState {
  const factory _Idle(final Ride? ride) = _$_Idle;

  Ride? get ride;
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
    extends _$RideResultStateCopyWithImpl<$Res, _$_Failure>
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
    return 'RideResultState.failure(message: $message, failure: $failure)';
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
    required TResult Function(Ride? ride) idle,
    required TResult Function(String message, RideFailure failure) failure,
    required TResult Function() loading,
  }) {
    return failure(message, this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Ride? ride)? idle,
    TResult? Function(String message, RideFailure failure)? failure,
    TResult? Function()? loading,
  }) {
    return failure?.call(message, this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Ride? ride)? idle,
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

abstract class _Failure implements RideResultState {
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
    extends _$RideResultStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'RideResultState.loading()';
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
    required TResult Function(Ride? ride) idle,
    required TResult Function(String message, RideFailure failure) failure,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Ride? ride)? idle,
    TResult? Function(String message, RideFailure failure)? failure,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Ride? ride)? idle,
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

abstract class _Loading implements RideResultState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
mixin _$RideResultEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() analyzeRide,
    required TResult Function() getRides,
    required TResult Function() saveAndClose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? analyzeRide,
    TResult? Function()? getRides,
    TResult? Function()? saveAndClose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? analyzeRide,
    TResult Function()? getRides,
    TResult Function()? saveAndClose,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AnalyzeRide value) analyzeRide,
    required TResult Function(_GetRides value) getRides,
    required TResult Function(_SaveAndClose value) saveAndClose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AnalyzeRide value)? analyzeRide,
    TResult? Function(_GetRides value)? getRides,
    TResult? Function(_SaveAndClose value)? saveAndClose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AnalyzeRide value)? analyzeRide,
    TResult Function(_GetRides value)? getRides,
    TResult Function(_SaveAndClose value)? saveAndClose,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RideResultEventCopyWith<$Res> {
  factory $RideResultEventCopyWith(
          RideResultEvent value, $Res Function(RideResultEvent) then) =
      _$RideResultEventCopyWithImpl<$Res, RideResultEvent>;
}

/// @nodoc
class _$RideResultEventCopyWithImpl<$Res, $Val extends RideResultEvent>
    implements $RideResultEventCopyWith<$Res> {
  _$RideResultEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AnalyzeRideCopyWith<$Res> {
  factory _$$_AnalyzeRideCopyWith(
          _$_AnalyzeRide value, $Res Function(_$_AnalyzeRide) then) =
      __$$_AnalyzeRideCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AnalyzeRideCopyWithImpl<$Res>
    extends _$RideResultEventCopyWithImpl<$Res, _$_AnalyzeRide>
    implements _$$_AnalyzeRideCopyWith<$Res> {
  __$$_AnalyzeRideCopyWithImpl(
      _$_AnalyzeRide _value, $Res Function(_$_AnalyzeRide) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AnalyzeRide implements _AnalyzeRide {
  const _$_AnalyzeRide();

  @override
  String toString() {
    return 'RideResultEvent.analyzeRide()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AnalyzeRide);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() analyzeRide,
    required TResult Function() getRides,
    required TResult Function() saveAndClose,
  }) {
    return analyzeRide();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? analyzeRide,
    TResult? Function()? getRides,
    TResult? Function()? saveAndClose,
  }) {
    return analyzeRide?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? analyzeRide,
    TResult Function()? getRides,
    TResult Function()? saveAndClose,
    required TResult orElse(),
  }) {
    if (analyzeRide != null) {
      return analyzeRide();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AnalyzeRide value) analyzeRide,
    required TResult Function(_GetRides value) getRides,
    required TResult Function(_SaveAndClose value) saveAndClose,
  }) {
    return analyzeRide(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AnalyzeRide value)? analyzeRide,
    TResult? Function(_GetRides value)? getRides,
    TResult? Function(_SaveAndClose value)? saveAndClose,
  }) {
    return analyzeRide?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AnalyzeRide value)? analyzeRide,
    TResult Function(_GetRides value)? getRides,
    TResult Function(_SaveAndClose value)? saveAndClose,
    required TResult orElse(),
  }) {
    if (analyzeRide != null) {
      return analyzeRide(this);
    }
    return orElse();
  }
}

abstract class _AnalyzeRide implements RideResultEvent {
  const factory _AnalyzeRide() = _$_AnalyzeRide;
}

/// @nodoc
abstract class _$$_GetRidesCopyWith<$Res> {
  factory _$$_GetRidesCopyWith(
          _$_GetRides value, $Res Function(_$_GetRides) then) =
      __$$_GetRidesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetRidesCopyWithImpl<$Res>
    extends _$RideResultEventCopyWithImpl<$Res, _$_GetRides>
    implements _$$_GetRidesCopyWith<$Res> {
  __$$_GetRidesCopyWithImpl(
      _$_GetRides _value, $Res Function(_$_GetRides) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetRides implements _GetRides {
  const _$_GetRides();

  @override
  String toString() {
    return 'RideResultEvent.getRides()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetRides);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() analyzeRide,
    required TResult Function() getRides,
    required TResult Function() saveAndClose,
  }) {
    return getRides();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? analyzeRide,
    TResult? Function()? getRides,
    TResult? Function()? saveAndClose,
  }) {
    return getRides?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? analyzeRide,
    TResult Function()? getRides,
    TResult Function()? saveAndClose,
    required TResult orElse(),
  }) {
    if (getRides != null) {
      return getRides();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AnalyzeRide value) analyzeRide,
    required TResult Function(_GetRides value) getRides,
    required TResult Function(_SaveAndClose value) saveAndClose,
  }) {
    return getRides(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AnalyzeRide value)? analyzeRide,
    TResult? Function(_GetRides value)? getRides,
    TResult? Function(_SaveAndClose value)? saveAndClose,
  }) {
    return getRides?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AnalyzeRide value)? analyzeRide,
    TResult Function(_GetRides value)? getRides,
    TResult Function(_SaveAndClose value)? saveAndClose,
    required TResult orElse(),
  }) {
    if (getRides != null) {
      return getRides(this);
    }
    return orElse();
  }
}

abstract class _GetRides implements RideResultEvent {
  const factory _GetRides() = _$_GetRides;
}

/// @nodoc
abstract class _$$_SaveAndCloseCopyWith<$Res> {
  factory _$$_SaveAndCloseCopyWith(
          _$_SaveAndClose value, $Res Function(_$_SaveAndClose) then) =
      __$$_SaveAndCloseCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SaveAndCloseCopyWithImpl<$Res>
    extends _$RideResultEventCopyWithImpl<$Res, _$_SaveAndClose>
    implements _$$_SaveAndCloseCopyWith<$Res> {
  __$$_SaveAndCloseCopyWithImpl(
      _$_SaveAndClose _value, $Res Function(_$_SaveAndClose) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SaveAndClose implements _SaveAndClose {
  const _$_SaveAndClose();

  @override
  String toString() {
    return 'RideResultEvent.saveAndClose()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SaveAndClose);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() analyzeRide,
    required TResult Function() getRides,
    required TResult Function() saveAndClose,
  }) {
    return saveAndClose();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? analyzeRide,
    TResult? Function()? getRides,
    TResult? Function()? saveAndClose,
  }) {
    return saveAndClose?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? analyzeRide,
    TResult Function()? getRides,
    TResult Function()? saveAndClose,
    required TResult orElse(),
  }) {
    if (saveAndClose != null) {
      return saveAndClose();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AnalyzeRide value) analyzeRide,
    required TResult Function(_GetRides value) getRides,
    required TResult Function(_SaveAndClose value) saveAndClose,
  }) {
    return saveAndClose(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AnalyzeRide value)? analyzeRide,
    TResult? Function(_GetRides value)? getRides,
    TResult? Function(_SaveAndClose value)? saveAndClose,
  }) {
    return saveAndClose?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AnalyzeRide value)? analyzeRide,
    TResult Function(_GetRides value)? getRides,
    TResult Function(_SaveAndClose value)? saveAndClose,
    required TResult orElse(),
  }) {
    if (saveAndClose != null) {
      return saveAndClose(this);
    }
    return orElse();
  }
}

abstract class _SaveAndClose implements RideResultEvent {
  const factory _SaveAndClose() = _$_SaveAndClose;
}
