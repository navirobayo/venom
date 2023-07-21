// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rides_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RidesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Ride> rides) idle,
    required TResult Function(String message, RideFailure failure) failure,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Ride> rides)? idle,
    TResult? Function(String message, RideFailure failure)? failure,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Ride> rides)? idle,
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
abstract class $RidesStateCopyWith<$Res> {
  factory $RidesStateCopyWith(
          RidesState value, $Res Function(RidesState) then) =
      _$RidesStateCopyWithImpl<$Res, RidesState>;
}

/// @nodoc
class _$RidesStateCopyWithImpl<$Res, $Val extends RidesState>
    implements $RidesStateCopyWith<$Res> {
  _$RidesStateCopyWithImpl(this._value, this._then);

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
  $Res call({List<Ride> rides});
}

/// @nodoc
class __$$_IdleCopyWithImpl<$Res>
    extends _$RidesStateCopyWithImpl<$Res, _$_Idle>
    implements _$$_IdleCopyWith<$Res> {
  __$$_IdleCopyWithImpl(_$_Idle _value, $Res Function(_$_Idle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rides = null,
  }) {
    return _then(_$_Idle(
      null == rides
          ? _value._rides
          : rides // ignore: cast_nullable_to_non_nullable
              as List<Ride>,
    ));
  }
}

/// @nodoc

class _$_Idle implements _Idle {
  const _$_Idle(final List<Ride> rides) : _rides = rides;

  final List<Ride> _rides;
  @override
  List<Ride> get rides {
    if (_rides is EqualUnmodifiableListView) return _rides;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rides);
  }

  @override
  String toString() {
    return 'RidesState.idle(rides: $rides)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Idle &&
            const DeepCollectionEquality().equals(other._rides, _rides));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_rides));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IdleCopyWith<_$_Idle> get copyWith =>
      __$$_IdleCopyWithImpl<_$_Idle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Ride> rides) idle,
    required TResult Function(String message, RideFailure failure) failure,
    required TResult Function() loading,
  }) {
    return idle(rides);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Ride> rides)? idle,
    TResult? Function(String message, RideFailure failure)? failure,
    TResult? Function()? loading,
  }) {
    return idle?.call(rides);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Ride> rides)? idle,
    TResult Function(String message, RideFailure failure)? failure,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(rides);
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

abstract class _Idle implements RidesState {
  const factory _Idle(final List<Ride> rides) = _$_Idle;

  List<Ride> get rides;
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
    extends _$RidesStateCopyWithImpl<$Res, _$_Failure>
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
    return 'RidesState.failure(message: $message, failure: $failure)';
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
    required TResult Function(List<Ride> rides) idle,
    required TResult Function(String message, RideFailure failure) failure,
    required TResult Function() loading,
  }) {
    return failure(message, this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Ride> rides)? idle,
    TResult? Function(String message, RideFailure failure)? failure,
    TResult? Function()? loading,
  }) {
    return failure?.call(message, this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Ride> rides)? idle,
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

abstract class _Failure implements RidesState {
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
    extends _$RidesStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'RidesState.loading()';
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
    required TResult Function(List<Ride> rides) idle,
    required TResult Function(String message, RideFailure failure) failure,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Ride> rides)? idle,
    TResult? Function(String message, RideFailure failure)? failure,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Ride> rides)? idle,
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

abstract class _Loading implements RidesState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
mixin _$RidesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRides,
    required TResult Function(int index) deleteRide,
    required TResult Function(Ride ride) cacheRide,
    required TResult Function() getCachedRides,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getRides,
    TResult? Function(int index)? deleteRide,
    TResult? Function(Ride ride)? cacheRide,
    TResult? Function()? getCachedRides,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRides,
    TResult Function(int index)? deleteRide,
    TResult Function(Ride ride)? cacheRide,
    TResult Function()? getCachedRides,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRides value) getRides,
    required TResult Function(_DeleteRide value) deleteRide,
    required TResult Function(_CacheRide value) cacheRide,
    required TResult Function(_GetCachedRides value) getCachedRides,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRides value)? getRides,
    TResult? Function(_DeleteRide value)? deleteRide,
    TResult? Function(_CacheRide value)? cacheRide,
    TResult? Function(_GetCachedRides value)? getCachedRides,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRides value)? getRides,
    TResult Function(_DeleteRide value)? deleteRide,
    TResult Function(_CacheRide value)? cacheRide,
    TResult Function(_GetCachedRides value)? getCachedRides,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RidesEventCopyWith<$Res> {
  factory $RidesEventCopyWith(
          RidesEvent value, $Res Function(RidesEvent) then) =
      _$RidesEventCopyWithImpl<$Res, RidesEvent>;
}

/// @nodoc
class _$RidesEventCopyWithImpl<$Res, $Val extends RidesEvent>
    implements $RidesEventCopyWith<$Res> {
  _$RidesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetRidesCopyWith<$Res> {
  factory _$$_GetRidesCopyWith(
          _$_GetRides value, $Res Function(_$_GetRides) then) =
      __$$_GetRidesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetRidesCopyWithImpl<$Res>
    extends _$RidesEventCopyWithImpl<$Res, _$_GetRides>
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
    return 'RidesEvent.getRides()';
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
    required TResult Function() getRides,
    required TResult Function(int index) deleteRide,
    required TResult Function(Ride ride) cacheRide,
    required TResult Function() getCachedRides,
  }) {
    return getRides();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getRides,
    TResult? Function(int index)? deleteRide,
    TResult? Function(Ride ride)? cacheRide,
    TResult? Function()? getCachedRides,
  }) {
    return getRides?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRides,
    TResult Function(int index)? deleteRide,
    TResult Function(Ride ride)? cacheRide,
    TResult Function()? getCachedRides,
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
    required TResult Function(_GetRides value) getRides,
    required TResult Function(_DeleteRide value) deleteRide,
    required TResult Function(_CacheRide value) cacheRide,
    required TResult Function(_GetCachedRides value) getCachedRides,
  }) {
    return getRides(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRides value)? getRides,
    TResult? Function(_DeleteRide value)? deleteRide,
    TResult? Function(_CacheRide value)? cacheRide,
    TResult? Function(_GetCachedRides value)? getCachedRides,
  }) {
    return getRides?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRides value)? getRides,
    TResult Function(_DeleteRide value)? deleteRide,
    TResult Function(_CacheRide value)? cacheRide,
    TResult Function(_GetCachedRides value)? getCachedRides,
    required TResult orElse(),
  }) {
    if (getRides != null) {
      return getRides(this);
    }
    return orElse();
  }
}

abstract class _GetRides implements RidesEvent {
  const factory _GetRides() = _$_GetRides;
}

/// @nodoc
abstract class _$$_DeleteRideCopyWith<$Res> {
  factory _$$_DeleteRideCopyWith(
          _$_DeleteRide value, $Res Function(_$_DeleteRide) then) =
      __$$_DeleteRideCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$_DeleteRideCopyWithImpl<$Res>
    extends _$RidesEventCopyWithImpl<$Res, _$_DeleteRide>
    implements _$$_DeleteRideCopyWith<$Res> {
  __$$_DeleteRideCopyWithImpl(
      _$_DeleteRide _value, $Res Function(_$_DeleteRide) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$_DeleteRide(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DeleteRide implements _DeleteRide {
  _$_DeleteRide(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'RidesEvent.deleteRide(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteRide &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteRideCopyWith<_$_DeleteRide> get copyWith =>
      __$$_DeleteRideCopyWithImpl<_$_DeleteRide>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRides,
    required TResult Function(int index) deleteRide,
    required TResult Function(Ride ride) cacheRide,
    required TResult Function() getCachedRides,
  }) {
    return deleteRide(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getRides,
    TResult? Function(int index)? deleteRide,
    TResult? Function(Ride ride)? cacheRide,
    TResult? Function()? getCachedRides,
  }) {
    return deleteRide?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRides,
    TResult Function(int index)? deleteRide,
    TResult Function(Ride ride)? cacheRide,
    TResult Function()? getCachedRides,
    required TResult orElse(),
  }) {
    if (deleteRide != null) {
      return deleteRide(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRides value) getRides,
    required TResult Function(_DeleteRide value) deleteRide,
    required TResult Function(_CacheRide value) cacheRide,
    required TResult Function(_GetCachedRides value) getCachedRides,
  }) {
    return deleteRide(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRides value)? getRides,
    TResult? Function(_DeleteRide value)? deleteRide,
    TResult? Function(_CacheRide value)? cacheRide,
    TResult? Function(_GetCachedRides value)? getCachedRides,
  }) {
    return deleteRide?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRides value)? getRides,
    TResult Function(_DeleteRide value)? deleteRide,
    TResult Function(_CacheRide value)? cacheRide,
    TResult Function(_GetCachedRides value)? getCachedRides,
    required TResult orElse(),
  }) {
    if (deleteRide != null) {
      return deleteRide(this);
    }
    return orElse();
  }
}

abstract class _DeleteRide implements RidesEvent {
  factory _DeleteRide(final int index) = _$_DeleteRide;

  int get index;
  @JsonKey(ignore: true)
  _$$_DeleteRideCopyWith<_$_DeleteRide> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CacheRideCopyWith<$Res> {
  factory _$$_CacheRideCopyWith(
          _$_CacheRide value, $Res Function(_$_CacheRide) then) =
      __$$_CacheRideCopyWithImpl<$Res>;
  @useResult
  $Res call({Ride ride});

  $RideCopyWith<$Res> get ride;
}

/// @nodoc
class __$$_CacheRideCopyWithImpl<$Res>
    extends _$RidesEventCopyWithImpl<$Res, _$_CacheRide>
    implements _$$_CacheRideCopyWith<$Res> {
  __$$_CacheRideCopyWithImpl(
      _$_CacheRide _value, $Res Function(_$_CacheRide) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ride = null,
  }) {
    return _then(_$_CacheRide(
      null == ride
          ? _value.ride
          : ride // ignore: cast_nullable_to_non_nullable
              as Ride,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RideCopyWith<$Res> get ride {
    return $RideCopyWith<$Res>(_value.ride, (value) {
      return _then(_value.copyWith(ride: value));
    });
  }
}

/// @nodoc

class _$_CacheRide implements _CacheRide {
  _$_CacheRide(this.ride);

  @override
  final Ride ride;

  @override
  String toString() {
    return 'RidesEvent.cacheRide(ride: $ride)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CacheRide &&
            (identical(other.ride, ride) || other.ride == ride));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ride);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CacheRideCopyWith<_$_CacheRide> get copyWith =>
      __$$_CacheRideCopyWithImpl<_$_CacheRide>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRides,
    required TResult Function(int index) deleteRide,
    required TResult Function(Ride ride) cacheRide,
    required TResult Function() getCachedRides,
  }) {
    return cacheRide(ride);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getRides,
    TResult? Function(int index)? deleteRide,
    TResult? Function(Ride ride)? cacheRide,
    TResult? Function()? getCachedRides,
  }) {
    return cacheRide?.call(ride);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRides,
    TResult Function(int index)? deleteRide,
    TResult Function(Ride ride)? cacheRide,
    TResult Function()? getCachedRides,
    required TResult orElse(),
  }) {
    if (cacheRide != null) {
      return cacheRide(ride);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRides value) getRides,
    required TResult Function(_DeleteRide value) deleteRide,
    required TResult Function(_CacheRide value) cacheRide,
    required TResult Function(_GetCachedRides value) getCachedRides,
  }) {
    return cacheRide(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRides value)? getRides,
    TResult? Function(_DeleteRide value)? deleteRide,
    TResult? Function(_CacheRide value)? cacheRide,
    TResult? Function(_GetCachedRides value)? getCachedRides,
  }) {
    return cacheRide?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRides value)? getRides,
    TResult Function(_DeleteRide value)? deleteRide,
    TResult Function(_CacheRide value)? cacheRide,
    TResult Function(_GetCachedRides value)? getCachedRides,
    required TResult orElse(),
  }) {
    if (cacheRide != null) {
      return cacheRide(this);
    }
    return orElse();
  }
}

abstract class _CacheRide implements RidesEvent {
  factory _CacheRide(final Ride ride) = _$_CacheRide;

  Ride get ride;
  @JsonKey(ignore: true)
  _$$_CacheRideCopyWith<_$_CacheRide> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetCachedRidesCopyWith<$Res> {
  factory _$$_GetCachedRidesCopyWith(
          _$_GetCachedRides value, $Res Function(_$_GetCachedRides) then) =
      __$$_GetCachedRidesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetCachedRidesCopyWithImpl<$Res>
    extends _$RidesEventCopyWithImpl<$Res, _$_GetCachedRides>
    implements _$$_GetCachedRidesCopyWith<$Res> {
  __$$_GetCachedRidesCopyWithImpl(
      _$_GetCachedRides _value, $Res Function(_$_GetCachedRides) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetCachedRides implements _GetCachedRides {
  _$_GetCachedRides();

  @override
  String toString() {
    return 'RidesEvent.getCachedRides()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetCachedRides);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRides,
    required TResult Function(int index) deleteRide,
    required TResult Function(Ride ride) cacheRide,
    required TResult Function() getCachedRides,
  }) {
    return getCachedRides();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getRides,
    TResult? Function(int index)? deleteRide,
    TResult? Function(Ride ride)? cacheRide,
    TResult? Function()? getCachedRides,
  }) {
    return getCachedRides?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRides,
    TResult Function(int index)? deleteRide,
    TResult Function(Ride ride)? cacheRide,
    TResult Function()? getCachedRides,
    required TResult orElse(),
  }) {
    if (getCachedRides != null) {
      return getCachedRides();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRides value) getRides,
    required TResult Function(_DeleteRide value) deleteRide,
    required TResult Function(_CacheRide value) cacheRide,
    required TResult Function(_GetCachedRides value) getCachedRides,
  }) {
    return getCachedRides(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRides value)? getRides,
    TResult? Function(_DeleteRide value)? deleteRide,
    TResult? Function(_CacheRide value)? cacheRide,
    TResult? Function(_GetCachedRides value)? getCachedRides,
  }) {
    return getCachedRides?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRides value)? getRides,
    TResult Function(_DeleteRide value)? deleteRide,
    TResult Function(_CacheRide value)? cacheRide,
    TResult Function(_GetCachedRides value)? getCachedRides,
    required TResult orElse(),
  }) {
    if (getCachedRides != null) {
      return getCachedRides(this);
    }
    return orElse();
  }
}

abstract class _GetCachedRides implements RidesEvent {
  factory _GetCachedRides() = _$_GetCachedRides;
}
