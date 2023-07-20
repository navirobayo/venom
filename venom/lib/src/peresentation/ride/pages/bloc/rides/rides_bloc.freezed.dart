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
    required TResult Function(List<Ride> rides, bool isLoading) idle,
    required TResult Function(String message, RideFailure failure) failure,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Ride> rides, bool isLoading)? idle,
    TResult? Function(String message, RideFailure failure)? failure,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Ride> rides, bool isLoading)? idle,
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
  $Res call({List<Ride> rides, bool isLoading});
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
    Object? isLoading = null,
  }) {
    return _then(_$_Idle(
      null == rides
          ? _value._rides
          : rides // ignore: cast_nullable_to_non_nullable
              as List<Ride>,
      null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Idle implements _Idle {
  const _$_Idle(final List<Ride> rides, this.isLoading) : _rides = rides;

  final List<Ride> _rides;
  @override
  List<Ride> get rides {
    if (_rides is EqualUnmodifiableListView) return _rides;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rides);
  }

  @override
  final bool isLoading;

  @override
  String toString() {
    return 'RidesState.idle(rides: $rides, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Idle &&
            const DeepCollectionEquality().equals(other._rides, _rides) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_rides), isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IdleCopyWith<_$_Idle> get copyWith =>
      __$$_IdleCopyWithImpl<_$_Idle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Ride> rides, bool isLoading) idle,
    required TResult Function(String message, RideFailure failure) failure,
    required TResult Function() loading,
  }) {
    return idle(rides, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Ride> rides, bool isLoading)? idle,
    TResult? Function(String message, RideFailure failure)? failure,
    TResult? Function()? loading,
  }) {
    return idle?.call(rides, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Ride> rides, bool isLoading)? idle,
    TResult Function(String message, RideFailure failure)? failure,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(rides, isLoading);
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
  const factory _Idle(final List<Ride> rides, final bool isLoading) = _$_Idle;

  List<Ride> get rides;
  bool get isLoading;
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
    required TResult Function(List<Ride> rides, bool isLoading) idle,
    required TResult Function(String message, RideFailure failure) failure,
    required TResult Function() loading,
  }) {
    return failure(message, this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Ride> rides, bool isLoading)? idle,
    TResult? Function(String message, RideFailure failure)? failure,
    TResult? Function()? loading,
  }) {
    return failure?.call(message, this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Ride> rides, bool isLoading)? idle,
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
    required TResult Function(List<Ride> rides, bool isLoading) idle,
    required TResult Function(String message, RideFailure failure) failure,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Ride> rides, bool isLoading)? idle,
    TResult? Function(String message, RideFailure failure)? failure,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Ride> rides, bool isLoading)? idle,
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
    required TResult Function(int? id) deleteRides,
    required TResult Function(Ride? ride) createRide,
    required TResult Function(List<Ride>? rides) cacheRides,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getRides,
    TResult? Function(int? id)? deleteRides,
    TResult? Function(Ride? ride)? createRide,
    TResult? Function(List<Ride>? rides)? cacheRides,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRides,
    TResult Function(int? id)? deleteRides,
    TResult Function(Ride? ride)? createRide,
    TResult Function(List<Ride>? rides)? cacheRides,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRides value) getRides,
    required TResult Function(_DeleteRide value) deleteRides,
    required TResult Function(_CreateRide value) createRide,
    required TResult Function(_CacheRides value) cacheRides,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRides value)? getRides,
    TResult? Function(_DeleteRide value)? deleteRides,
    TResult? Function(_CreateRide value)? createRide,
    TResult? Function(_CacheRides value)? cacheRides,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRides value)? getRides,
    TResult Function(_DeleteRide value)? deleteRides,
    TResult Function(_CreateRide value)? createRide,
    TResult Function(_CacheRides value)? cacheRides,
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
    required TResult Function(int? id) deleteRides,
    required TResult Function(Ride? ride) createRide,
    required TResult Function(List<Ride>? rides) cacheRides,
  }) {
    return getRides();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getRides,
    TResult? Function(int? id)? deleteRides,
    TResult? Function(Ride? ride)? createRide,
    TResult? Function(List<Ride>? rides)? cacheRides,
  }) {
    return getRides?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRides,
    TResult Function(int? id)? deleteRides,
    TResult Function(Ride? ride)? createRide,
    TResult Function(List<Ride>? rides)? cacheRides,
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
    required TResult Function(_DeleteRide value) deleteRides,
    required TResult Function(_CreateRide value) createRide,
    required TResult Function(_CacheRides value) cacheRides,
  }) {
    return getRides(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRides value)? getRides,
    TResult? Function(_DeleteRide value)? deleteRides,
    TResult? Function(_CreateRide value)? createRide,
    TResult? Function(_CacheRides value)? cacheRides,
  }) {
    return getRides?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRides value)? getRides,
    TResult Function(_DeleteRide value)? deleteRides,
    TResult Function(_CreateRide value)? createRide,
    TResult Function(_CacheRides value)? cacheRides,
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
  $Res call({int? id});
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
    Object? id = freezed,
  }) {
    return _then(_$_DeleteRide(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_DeleteRide implements _DeleteRide {
  const _$_DeleteRide(this.id);

  @override
  final int? id;

  @override
  String toString() {
    return 'RidesEvent.deleteRides(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteRide &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteRideCopyWith<_$_DeleteRide> get copyWith =>
      __$$_DeleteRideCopyWithImpl<_$_DeleteRide>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRides,
    required TResult Function(int? id) deleteRides,
    required TResult Function(Ride? ride) createRide,
    required TResult Function(List<Ride>? rides) cacheRides,
  }) {
    return deleteRides(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getRides,
    TResult? Function(int? id)? deleteRides,
    TResult? Function(Ride? ride)? createRide,
    TResult? Function(List<Ride>? rides)? cacheRides,
  }) {
    return deleteRides?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRides,
    TResult Function(int? id)? deleteRides,
    TResult Function(Ride? ride)? createRide,
    TResult Function(List<Ride>? rides)? cacheRides,
    required TResult orElse(),
  }) {
    if (deleteRides != null) {
      return deleteRides(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRides value) getRides,
    required TResult Function(_DeleteRide value) deleteRides,
    required TResult Function(_CreateRide value) createRide,
    required TResult Function(_CacheRides value) cacheRides,
  }) {
    return deleteRides(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRides value)? getRides,
    TResult? Function(_DeleteRide value)? deleteRides,
    TResult? Function(_CreateRide value)? createRide,
    TResult? Function(_CacheRides value)? cacheRides,
  }) {
    return deleteRides?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRides value)? getRides,
    TResult Function(_DeleteRide value)? deleteRides,
    TResult Function(_CreateRide value)? createRide,
    TResult Function(_CacheRides value)? cacheRides,
    required TResult orElse(),
  }) {
    if (deleteRides != null) {
      return deleteRides(this);
    }
    return orElse();
  }
}

abstract class _DeleteRide implements RidesEvent {
  const factory _DeleteRide(final int? id) = _$_DeleteRide;

  int? get id;
  @JsonKey(ignore: true)
  _$$_DeleteRideCopyWith<_$_DeleteRide> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CreateRideCopyWith<$Res> {
  factory _$$_CreateRideCopyWith(
          _$_CreateRide value, $Res Function(_$_CreateRide) then) =
      __$$_CreateRideCopyWithImpl<$Res>;
  @useResult
  $Res call({Ride? ride});

  $RideCopyWith<$Res>? get ride;
}

/// @nodoc
class __$$_CreateRideCopyWithImpl<$Res>
    extends _$RidesEventCopyWithImpl<$Res, _$_CreateRide>
    implements _$$_CreateRideCopyWith<$Res> {
  __$$_CreateRideCopyWithImpl(
      _$_CreateRide _value, $Res Function(_$_CreateRide) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ride = freezed,
  }) {
    return _then(_$_CreateRide(
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

class _$_CreateRide implements _CreateRide {
  const _$_CreateRide(this.ride);

  @override
  final Ride? ride;

  @override
  String toString() {
    return 'RidesEvent.createRide(ride: $ride)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateRide &&
            (identical(other.ride, ride) || other.ride == ride));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ride);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateRideCopyWith<_$_CreateRide> get copyWith =>
      __$$_CreateRideCopyWithImpl<_$_CreateRide>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRides,
    required TResult Function(int? id) deleteRides,
    required TResult Function(Ride? ride) createRide,
    required TResult Function(List<Ride>? rides) cacheRides,
  }) {
    return createRide(ride);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getRides,
    TResult? Function(int? id)? deleteRides,
    TResult? Function(Ride? ride)? createRide,
    TResult? Function(List<Ride>? rides)? cacheRides,
  }) {
    return createRide?.call(ride);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRides,
    TResult Function(int? id)? deleteRides,
    TResult Function(Ride? ride)? createRide,
    TResult Function(List<Ride>? rides)? cacheRides,
    required TResult orElse(),
  }) {
    if (createRide != null) {
      return createRide(ride);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRides value) getRides,
    required TResult Function(_DeleteRide value) deleteRides,
    required TResult Function(_CreateRide value) createRide,
    required TResult Function(_CacheRides value) cacheRides,
  }) {
    return createRide(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRides value)? getRides,
    TResult? Function(_DeleteRide value)? deleteRides,
    TResult? Function(_CreateRide value)? createRide,
    TResult? Function(_CacheRides value)? cacheRides,
  }) {
    return createRide?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRides value)? getRides,
    TResult Function(_DeleteRide value)? deleteRides,
    TResult Function(_CreateRide value)? createRide,
    TResult Function(_CacheRides value)? cacheRides,
    required TResult orElse(),
  }) {
    if (createRide != null) {
      return createRide(this);
    }
    return orElse();
  }
}

abstract class _CreateRide implements RidesEvent {
  const factory _CreateRide(final Ride? ride) = _$_CreateRide;

  Ride? get ride;
  @JsonKey(ignore: true)
  _$$_CreateRideCopyWith<_$_CreateRide> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CacheRidesCopyWith<$Res> {
  factory _$$_CacheRidesCopyWith(
          _$_CacheRides value, $Res Function(_$_CacheRides) then) =
      __$$_CacheRidesCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Ride>? rides});
}

/// @nodoc
class __$$_CacheRidesCopyWithImpl<$Res>
    extends _$RidesEventCopyWithImpl<$Res, _$_CacheRides>
    implements _$$_CacheRidesCopyWith<$Res> {
  __$$_CacheRidesCopyWithImpl(
      _$_CacheRides _value, $Res Function(_$_CacheRides) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rides = freezed,
  }) {
    return _then(_$_CacheRides(
      freezed == rides
          ? _value._rides
          : rides // ignore: cast_nullable_to_non_nullable
              as List<Ride>?,
    ));
  }
}

/// @nodoc

class _$_CacheRides implements _CacheRides {
  const _$_CacheRides(final List<Ride>? rides) : _rides = rides;

  final List<Ride>? _rides;
  @override
  List<Ride>? get rides {
    final value = _rides;
    if (value == null) return null;
    if (_rides is EqualUnmodifiableListView) return _rides;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RidesEvent.cacheRides(rides: $rides)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CacheRides &&
            const DeepCollectionEquality().equals(other._rides, _rides));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_rides));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CacheRidesCopyWith<_$_CacheRides> get copyWith =>
      __$$_CacheRidesCopyWithImpl<_$_CacheRides>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRides,
    required TResult Function(int? id) deleteRides,
    required TResult Function(Ride? ride) createRide,
    required TResult Function(List<Ride>? rides) cacheRides,
  }) {
    return cacheRides(rides);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getRides,
    TResult? Function(int? id)? deleteRides,
    TResult? Function(Ride? ride)? createRide,
    TResult? Function(List<Ride>? rides)? cacheRides,
  }) {
    return cacheRides?.call(rides);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRides,
    TResult Function(int? id)? deleteRides,
    TResult Function(Ride? ride)? createRide,
    TResult Function(List<Ride>? rides)? cacheRides,
    required TResult orElse(),
  }) {
    if (cacheRides != null) {
      return cacheRides(rides);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRides value) getRides,
    required TResult Function(_DeleteRide value) deleteRides,
    required TResult Function(_CreateRide value) createRide,
    required TResult Function(_CacheRides value) cacheRides,
  }) {
    return cacheRides(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRides value)? getRides,
    TResult? Function(_DeleteRide value)? deleteRides,
    TResult? Function(_CreateRide value)? createRide,
    TResult? Function(_CacheRides value)? cacheRides,
  }) {
    return cacheRides?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRides value)? getRides,
    TResult Function(_DeleteRide value)? deleteRides,
    TResult Function(_CreateRide value)? createRide,
    TResult Function(_CacheRides value)? cacheRides,
    required TResult orElse(),
  }) {
    if (cacheRides != null) {
      return cacheRides(this);
    }
    return orElse();
  }
}

abstract class _CacheRides implements RidesEvent {
  const factory _CacheRides(final List<Ride>? rides) = _$_CacheRides;

  List<Ride>? get rides;
  @JsonKey(ignore: true)
  _$$_CacheRidesCopyWith<_$_CacheRides> get copyWith =>
      throw _privateConstructorUsedError;
}
