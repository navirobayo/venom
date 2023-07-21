// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'before_ride_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BeforeRideState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime timeSelected) idle,
    required TResult Function(String message, RideFailure failure) failure,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime timeSelected)? idle,
    TResult? Function(String message, RideFailure failure)? failure,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime timeSelected)? idle,
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
abstract class $BeforeRideStateCopyWith<$Res> {
  factory $BeforeRideStateCopyWith(
          BeforeRideState value, $Res Function(BeforeRideState) then) =
      _$BeforeRideStateCopyWithImpl<$Res, BeforeRideState>;
}

/// @nodoc
class _$BeforeRideStateCopyWithImpl<$Res, $Val extends BeforeRideState>
    implements $BeforeRideStateCopyWith<$Res> {
  _$BeforeRideStateCopyWithImpl(this._value, this._then);

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
  $Res call({DateTime timeSelected});
}

/// @nodoc
class __$$_IdleCopyWithImpl<$Res>
    extends _$BeforeRideStateCopyWithImpl<$Res, _$_Idle>
    implements _$$_IdleCopyWith<$Res> {
  __$$_IdleCopyWithImpl(_$_Idle _value, $Res Function(_$_Idle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeSelected = null,
  }) {
    return _then(_$_Idle(
      null == timeSelected
          ? _value.timeSelected
          : timeSelected // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_Idle implements _Idle {
  const _$_Idle(this.timeSelected);

  @override
  final DateTime timeSelected;

  @override
  String toString() {
    return 'BeforeRideState.idle(timeSelected: $timeSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Idle &&
            (identical(other.timeSelected, timeSelected) ||
                other.timeSelected == timeSelected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, timeSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IdleCopyWith<_$_Idle> get copyWith =>
      __$$_IdleCopyWithImpl<_$_Idle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime timeSelected) idle,
    required TResult Function(String message, RideFailure failure) failure,
    required TResult Function() loading,
  }) {
    return idle(timeSelected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime timeSelected)? idle,
    TResult? Function(String message, RideFailure failure)? failure,
    TResult? Function()? loading,
  }) {
    return idle?.call(timeSelected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime timeSelected)? idle,
    TResult Function(String message, RideFailure failure)? failure,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(timeSelected);
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

abstract class _Idle implements BeforeRideState {
  const factory _Idle(final DateTime timeSelected) = _$_Idle;

  DateTime get timeSelected;
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
    extends _$BeforeRideStateCopyWithImpl<$Res, _$_Failure>
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
    return 'BeforeRideState.failure(message: $message, failure: $failure)';
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
    required TResult Function(DateTime timeSelected) idle,
    required TResult Function(String message, RideFailure failure) failure,
    required TResult Function() loading,
  }) {
    return failure(message, this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime timeSelected)? idle,
    TResult? Function(String message, RideFailure failure)? failure,
    TResult? Function()? loading,
  }) {
    return failure?.call(message, this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime timeSelected)? idle,
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

abstract class _Failure implements BeforeRideState {
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
    extends _$BeforeRideStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'BeforeRideState.loading()';
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
    required TResult Function(DateTime timeSelected) idle,
    required TResult Function(String message, RideFailure failure) failure,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime timeSelected)? idle,
    TResult? Function(String message, RideFailure failure)? failure,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime timeSelected)? idle,
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

abstract class _Loading implements BeforeRideState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
mixin _$BeforeRideEvent {
  DateTime? get timeSelected => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime? timeSelected) changeTime,
    required TResult Function(DateTime? timeSelected) acceptTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime? timeSelected)? changeTime,
    TResult? Function(DateTime? timeSelected)? acceptTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime? timeSelected)? changeTime,
    TResult Function(DateTime? timeSelected)? acceptTime,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeTime value) changeTime,
    required TResult Function(_AcceptTime value) acceptTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeTime value)? changeTime,
    TResult? Function(_AcceptTime value)? acceptTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeTime value)? changeTime,
    TResult Function(_AcceptTime value)? acceptTime,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BeforeRideEventCopyWith<BeforeRideEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeforeRideEventCopyWith<$Res> {
  factory $BeforeRideEventCopyWith(
          BeforeRideEvent value, $Res Function(BeforeRideEvent) then) =
      _$BeforeRideEventCopyWithImpl<$Res, BeforeRideEvent>;
  @useResult
  $Res call({DateTime? timeSelected});
}

/// @nodoc
class _$BeforeRideEventCopyWithImpl<$Res, $Val extends BeforeRideEvent>
    implements $BeforeRideEventCopyWith<$Res> {
  _$BeforeRideEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeSelected = freezed,
  }) {
    return _then(_value.copyWith(
      timeSelected: freezed == timeSelected
          ? _value.timeSelected
          : timeSelected // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChangeTimeCopyWith<$Res>
    implements $BeforeRideEventCopyWith<$Res> {
  factory _$$_ChangeTimeCopyWith(
          _$_ChangeTime value, $Res Function(_$_ChangeTime) then) =
      __$$_ChangeTimeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime? timeSelected});
}

/// @nodoc
class __$$_ChangeTimeCopyWithImpl<$Res>
    extends _$BeforeRideEventCopyWithImpl<$Res, _$_ChangeTime>
    implements _$$_ChangeTimeCopyWith<$Res> {
  __$$_ChangeTimeCopyWithImpl(
      _$_ChangeTime _value, $Res Function(_$_ChangeTime) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeSelected = freezed,
  }) {
    return _then(_$_ChangeTime(
      freezed == timeSelected
          ? _value.timeSelected
          : timeSelected // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_ChangeTime implements _ChangeTime {
  const _$_ChangeTime(this.timeSelected);

  @override
  final DateTime? timeSelected;

  @override
  String toString() {
    return 'BeforeRideEvent.changeTime(timeSelected: $timeSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeTime &&
            (identical(other.timeSelected, timeSelected) ||
                other.timeSelected == timeSelected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, timeSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeTimeCopyWith<_$_ChangeTime> get copyWith =>
      __$$_ChangeTimeCopyWithImpl<_$_ChangeTime>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime? timeSelected) changeTime,
    required TResult Function(DateTime? timeSelected) acceptTime,
  }) {
    return changeTime(timeSelected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime? timeSelected)? changeTime,
    TResult? Function(DateTime? timeSelected)? acceptTime,
  }) {
    return changeTime?.call(timeSelected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime? timeSelected)? changeTime,
    TResult Function(DateTime? timeSelected)? acceptTime,
    required TResult orElse(),
  }) {
    if (changeTime != null) {
      return changeTime(timeSelected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeTime value) changeTime,
    required TResult Function(_AcceptTime value) acceptTime,
  }) {
    return changeTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeTime value)? changeTime,
    TResult? Function(_AcceptTime value)? acceptTime,
  }) {
    return changeTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeTime value)? changeTime,
    TResult Function(_AcceptTime value)? acceptTime,
    required TResult orElse(),
  }) {
    if (changeTime != null) {
      return changeTime(this);
    }
    return orElse();
  }
}

abstract class _ChangeTime implements BeforeRideEvent {
  const factory _ChangeTime(final DateTime? timeSelected) = _$_ChangeTime;

  @override
  DateTime? get timeSelected;
  @override
  @JsonKey(ignore: true)
  _$$_ChangeTimeCopyWith<_$_ChangeTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AcceptTimeCopyWith<$Res>
    implements $BeforeRideEventCopyWith<$Res> {
  factory _$$_AcceptTimeCopyWith(
          _$_AcceptTime value, $Res Function(_$_AcceptTime) then) =
      __$$_AcceptTimeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime? timeSelected});
}

/// @nodoc
class __$$_AcceptTimeCopyWithImpl<$Res>
    extends _$BeforeRideEventCopyWithImpl<$Res, _$_AcceptTime>
    implements _$$_AcceptTimeCopyWith<$Res> {
  __$$_AcceptTimeCopyWithImpl(
      _$_AcceptTime _value, $Res Function(_$_AcceptTime) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeSelected = freezed,
  }) {
    return _then(_$_AcceptTime(
      freezed == timeSelected
          ? _value.timeSelected
          : timeSelected // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_AcceptTime implements _AcceptTime {
  const _$_AcceptTime(this.timeSelected);

  @override
  final DateTime? timeSelected;

  @override
  String toString() {
    return 'BeforeRideEvent.acceptTime(timeSelected: $timeSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AcceptTime &&
            (identical(other.timeSelected, timeSelected) ||
                other.timeSelected == timeSelected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, timeSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AcceptTimeCopyWith<_$_AcceptTime> get copyWith =>
      __$$_AcceptTimeCopyWithImpl<_$_AcceptTime>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime? timeSelected) changeTime,
    required TResult Function(DateTime? timeSelected) acceptTime,
  }) {
    return acceptTime(timeSelected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime? timeSelected)? changeTime,
    TResult? Function(DateTime? timeSelected)? acceptTime,
  }) {
    return acceptTime?.call(timeSelected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime? timeSelected)? changeTime,
    TResult Function(DateTime? timeSelected)? acceptTime,
    required TResult orElse(),
  }) {
    if (acceptTime != null) {
      return acceptTime(timeSelected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeTime value) changeTime,
    required TResult Function(_AcceptTime value) acceptTime,
  }) {
    return acceptTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeTime value)? changeTime,
    TResult? Function(_AcceptTime value)? acceptTime,
  }) {
    return acceptTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeTime value)? changeTime,
    TResult Function(_AcceptTime value)? acceptTime,
    required TResult orElse(),
  }) {
    if (acceptTime != null) {
      return acceptTime(this);
    }
    return orElse();
  }
}

abstract class _AcceptTime implements BeforeRideEvent {
  const factory _AcceptTime(final DateTime? timeSelected) = _$_AcceptTime;

  @override
  DateTime? get timeSelected;
  @override
  @JsonKey(ignore: true)
  _$$_AcceptTimeCopyWith<_$_AcceptTime> get copyWith =>
      throw _privateConstructorUsedError;
}
