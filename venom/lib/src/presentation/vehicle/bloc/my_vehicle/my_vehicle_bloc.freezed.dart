// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_vehicle_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MyVehicleState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Vehicle> vehicles) idle,
    required TResult Function(String message, VehicleFailure failure) failure,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Vehicle> vehicles)? idle,
    TResult? Function(String message, VehicleFailure failure)? failure,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Vehicle> vehicles)? idle,
    TResult Function(String message, VehicleFailure failure)? failure,
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
abstract class $MyVehicleStateCopyWith<$Res> {
  factory $MyVehicleStateCopyWith(
          MyVehicleState value, $Res Function(MyVehicleState) then) =
      _$MyVehicleStateCopyWithImpl<$Res, MyVehicleState>;
}

/// @nodoc
class _$MyVehicleStateCopyWithImpl<$Res, $Val extends MyVehicleState>
    implements $MyVehicleStateCopyWith<$Res> {
  _$MyVehicleStateCopyWithImpl(this._value, this._then);

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
  $Res call({List<Vehicle> vehicles});
}

/// @nodoc
class __$$_IdleCopyWithImpl<$Res>
    extends _$MyVehicleStateCopyWithImpl<$Res, _$_Idle>
    implements _$$_IdleCopyWith<$Res> {
  __$$_IdleCopyWithImpl(_$_Idle _value, $Res Function(_$_Idle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vehicles = null,
  }) {
    return _then(_$_Idle(
      null == vehicles
          ? _value._vehicles
          : vehicles // ignore: cast_nullable_to_non_nullable
              as List<Vehicle>,
    ));
  }
}

/// @nodoc

class _$_Idle implements _Idle {
  const _$_Idle(final List<Vehicle> vehicles) : _vehicles = vehicles;

  final List<Vehicle> _vehicles;
  @override
  List<Vehicle> get vehicles {
    if (_vehicles is EqualUnmodifiableListView) return _vehicles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_vehicles);
  }

  @override
  String toString() {
    return 'MyVehicleState.idle(vehicles: $vehicles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Idle &&
            const DeepCollectionEquality().equals(other._vehicles, _vehicles));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_vehicles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IdleCopyWith<_$_Idle> get copyWith =>
      __$$_IdleCopyWithImpl<_$_Idle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Vehicle> vehicles) idle,
    required TResult Function(String message, VehicleFailure failure) failure,
    required TResult Function() loading,
  }) {
    return idle(vehicles);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Vehicle> vehicles)? idle,
    TResult? Function(String message, VehicleFailure failure)? failure,
    TResult? Function()? loading,
  }) {
    return idle?.call(vehicles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Vehicle> vehicles)? idle,
    TResult Function(String message, VehicleFailure failure)? failure,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(vehicles);
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

abstract class _Idle implements MyVehicleState {
  const factory _Idle(final List<Vehicle> vehicles) = _$_Idle;

  List<Vehicle> get vehicles;
  @JsonKey(ignore: true)
  _$$_IdleCopyWith<_$_Idle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, VehicleFailure failure});

  $VehicleFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res>
    extends _$MyVehicleStateCopyWithImpl<$Res, _$_Failure>
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
              as VehicleFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $VehicleFailureCopyWith<$Res> get failure {
    return $VehicleFailureCopyWith<$Res>(_value.failure, (value) {
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
  final VehicleFailure failure;

  @override
  String toString() {
    return 'MyVehicleState.failure(message: $message, failure: $failure)';
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
    required TResult Function(List<Vehicle> vehicles) idle,
    required TResult Function(String message, VehicleFailure failure) failure,
    required TResult Function() loading,
  }) {
    return failure(message, this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Vehicle> vehicles)? idle,
    TResult? Function(String message, VehicleFailure failure)? failure,
    TResult? Function()? loading,
  }) {
    return failure?.call(message, this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Vehicle> vehicles)? idle,
    TResult Function(String message, VehicleFailure failure)? failure,
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

abstract class _Failure implements MyVehicleState {
  const factory _Failure(final String message, final VehicleFailure failure) =
      _$_Failure;

  String get message;
  VehicleFailure get failure;
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
    extends _$MyVehicleStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'MyVehicleState.loading()';
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
    required TResult Function(List<Vehicle> vehicles) idle,
    required TResult Function(String message, VehicleFailure failure) failure,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Vehicle> vehicles)? idle,
    TResult? Function(String message, VehicleFailure failure)? failure,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Vehicle> vehicles)? idle,
    TResult Function(String message, VehicleFailure failure)? failure,
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

abstract class _Loading implements MyVehicleState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
mixin _$MyVehicleEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) deleteVehicle,
    required TResult Function(Vehicle vehicle) cacheVehicle,
    required TResult Function(Vehicle vehicle) updateVehicle,
    required TResult Function() getCachedVehicles,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? deleteVehicle,
    TResult? Function(Vehicle vehicle)? cacheVehicle,
    TResult? Function(Vehicle vehicle)? updateVehicle,
    TResult? Function()? getCachedVehicles,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? deleteVehicle,
    TResult Function(Vehicle vehicle)? cacheVehicle,
    TResult Function(Vehicle vehicle)? updateVehicle,
    TResult Function()? getCachedVehicles,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteVehicle value) deleteVehicle,
    required TResult Function(_CacheVehicle value) cacheVehicle,
    required TResult Function(_UpdateVehicle value) updateVehicle,
    required TResult Function(_GetCachedVehicles value) getCachedVehicles,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteVehicle value)? deleteVehicle,
    TResult? Function(_CacheVehicle value)? cacheVehicle,
    TResult? Function(_UpdateVehicle value)? updateVehicle,
    TResult? Function(_GetCachedVehicles value)? getCachedVehicles,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteVehicle value)? deleteVehicle,
    TResult Function(_CacheVehicle value)? cacheVehicle,
    TResult Function(_UpdateVehicle value)? updateVehicle,
    TResult Function(_GetCachedVehicles value)? getCachedVehicles,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyVehicleEventCopyWith<$Res> {
  factory $MyVehicleEventCopyWith(
          MyVehicleEvent value, $Res Function(MyVehicleEvent) then) =
      _$MyVehicleEventCopyWithImpl<$Res, MyVehicleEvent>;
}

/// @nodoc
class _$MyVehicleEventCopyWithImpl<$Res, $Val extends MyVehicleEvent>
    implements $MyVehicleEventCopyWith<$Res> {
  _$MyVehicleEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_DeleteVehicleCopyWith<$Res> {
  factory _$$_DeleteVehicleCopyWith(
          _$_DeleteVehicle value, $Res Function(_$_DeleteVehicle) then) =
      __$$_DeleteVehicleCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$_DeleteVehicleCopyWithImpl<$Res>
    extends _$MyVehicleEventCopyWithImpl<$Res, _$_DeleteVehicle>
    implements _$$_DeleteVehicleCopyWith<$Res> {
  __$$_DeleteVehicleCopyWithImpl(
      _$_DeleteVehicle _value, $Res Function(_$_DeleteVehicle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$_DeleteVehicle(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DeleteVehicle implements _DeleteVehicle {
  _$_DeleteVehicle(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'MyVehicleEvent.deleteVehicle(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteVehicle &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteVehicleCopyWith<_$_DeleteVehicle> get copyWith =>
      __$$_DeleteVehicleCopyWithImpl<_$_DeleteVehicle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) deleteVehicle,
    required TResult Function(Vehicle vehicle) cacheVehicle,
    required TResult Function(Vehicle vehicle) updateVehicle,
    required TResult Function() getCachedVehicles,
  }) {
    return deleteVehicle(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? deleteVehicle,
    TResult? Function(Vehicle vehicle)? cacheVehicle,
    TResult? Function(Vehicle vehicle)? updateVehicle,
    TResult? Function()? getCachedVehicles,
  }) {
    return deleteVehicle?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? deleteVehicle,
    TResult Function(Vehicle vehicle)? cacheVehicle,
    TResult Function(Vehicle vehicle)? updateVehicle,
    TResult Function()? getCachedVehicles,
    required TResult orElse(),
  }) {
    if (deleteVehicle != null) {
      return deleteVehicle(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteVehicle value) deleteVehicle,
    required TResult Function(_CacheVehicle value) cacheVehicle,
    required TResult Function(_UpdateVehicle value) updateVehicle,
    required TResult Function(_GetCachedVehicles value) getCachedVehicles,
  }) {
    return deleteVehicle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteVehicle value)? deleteVehicle,
    TResult? Function(_CacheVehicle value)? cacheVehicle,
    TResult? Function(_UpdateVehicle value)? updateVehicle,
    TResult? Function(_GetCachedVehicles value)? getCachedVehicles,
  }) {
    return deleteVehicle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteVehicle value)? deleteVehicle,
    TResult Function(_CacheVehicle value)? cacheVehicle,
    TResult Function(_UpdateVehicle value)? updateVehicle,
    TResult Function(_GetCachedVehicles value)? getCachedVehicles,
    required TResult orElse(),
  }) {
    if (deleteVehicle != null) {
      return deleteVehicle(this);
    }
    return orElse();
  }
}

abstract class _DeleteVehicle implements MyVehicleEvent {
  factory _DeleteVehicle(final int index) = _$_DeleteVehicle;

  int get index;
  @JsonKey(ignore: true)
  _$$_DeleteVehicleCopyWith<_$_DeleteVehicle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CacheVehicleCopyWith<$Res> {
  factory _$$_CacheVehicleCopyWith(
          _$_CacheVehicle value, $Res Function(_$_CacheVehicle) then) =
      __$$_CacheVehicleCopyWithImpl<$Res>;
  @useResult
  $Res call({Vehicle vehicle});

  $VehicleCopyWith<$Res> get vehicle;
}

/// @nodoc
class __$$_CacheVehicleCopyWithImpl<$Res>
    extends _$MyVehicleEventCopyWithImpl<$Res, _$_CacheVehicle>
    implements _$$_CacheVehicleCopyWith<$Res> {
  __$$_CacheVehicleCopyWithImpl(
      _$_CacheVehicle _value, $Res Function(_$_CacheVehicle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vehicle = null,
  }) {
    return _then(_$_CacheVehicle(
      null == vehicle
          ? _value.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as Vehicle,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $VehicleCopyWith<$Res> get vehicle {
    return $VehicleCopyWith<$Res>(_value.vehicle, (value) {
      return _then(_value.copyWith(vehicle: value));
    });
  }
}

/// @nodoc

class _$_CacheVehicle implements _CacheVehicle {
  _$_CacheVehicle(this.vehicle);

  @override
  final Vehicle vehicle;

  @override
  String toString() {
    return 'MyVehicleEvent.cacheVehicle(vehicle: $vehicle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CacheVehicle &&
            (identical(other.vehicle, vehicle) || other.vehicle == vehicle));
  }

  @override
  int get hashCode => Object.hash(runtimeType, vehicle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CacheVehicleCopyWith<_$_CacheVehicle> get copyWith =>
      __$$_CacheVehicleCopyWithImpl<_$_CacheVehicle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) deleteVehicle,
    required TResult Function(Vehicle vehicle) cacheVehicle,
    required TResult Function(Vehicle vehicle) updateVehicle,
    required TResult Function() getCachedVehicles,
  }) {
    return cacheVehicle(vehicle);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? deleteVehicle,
    TResult? Function(Vehicle vehicle)? cacheVehicle,
    TResult? Function(Vehicle vehicle)? updateVehicle,
    TResult? Function()? getCachedVehicles,
  }) {
    return cacheVehicle?.call(vehicle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? deleteVehicle,
    TResult Function(Vehicle vehicle)? cacheVehicle,
    TResult Function(Vehicle vehicle)? updateVehicle,
    TResult Function()? getCachedVehicles,
    required TResult orElse(),
  }) {
    if (cacheVehicle != null) {
      return cacheVehicle(vehicle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteVehicle value) deleteVehicle,
    required TResult Function(_CacheVehicle value) cacheVehicle,
    required TResult Function(_UpdateVehicle value) updateVehicle,
    required TResult Function(_GetCachedVehicles value) getCachedVehicles,
  }) {
    return cacheVehicle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteVehicle value)? deleteVehicle,
    TResult? Function(_CacheVehicle value)? cacheVehicle,
    TResult? Function(_UpdateVehicle value)? updateVehicle,
    TResult? Function(_GetCachedVehicles value)? getCachedVehicles,
  }) {
    return cacheVehicle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteVehicle value)? deleteVehicle,
    TResult Function(_CacheVehicle value)? cacheVehicle,
    TResult Function(_UpdateVehicle value)? updateVehicle,
    TResult Function(_GetCachedVehicles value)? getCachedVehicles,
    required TResult orElse(),
  }) {
    if (cacheVehicle != null) {
      return cacheVehicle(this);
    }
    return orElse();
  }
}

abstract class _CacheVehicle implements MyVehicleEvent {
  factory _CacheVehicle(final Vehicle vehicle) = _$_CacheVehicle;

  Vehicle get vehicle;
  @JsonKey(ignore: true)
  _$$_CacheVehicleCopyWith<_$_CacheVehicle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateVehicleCopyWith<$Res> {
  factory _$$_UpdateVehicleCopyWith(
          _$_UpdateVehicle value, $Res Function(_$_UpdateVehicle) then) =
      __$$_UpdateVehicleCopyWithImpl<$Res>;
  @useResult
  $Res call({Vehicle vehicle});

  $VehicleCopyWith<$Res> get vehicle;
}

/// @nodoc
class __$$_UpdateVehicleCopyWithImpl<$Res>
    extends _$MyVehicleEventCopyWithImpl<$Res, _$_UpdateVehicle>
    implements _$$_UpdateVehicleCopyWith<$Res> {
  __$$_UpdateVehicleCopyWithImpl(
      _$_UpdateVehicle _value, $Res Function(_$_UpdateVehicle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vehicle = null,
  }) {
    return _then(_$_UpdateVehicle(
      null == vehicle
          ? _value.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as Vehicle,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $VehicleCopyWith<$Res> get vehicle {
    return $VehicleCopyWith<$Res>(_value.vehicle, (value) {
      return _then(_value.copyWith(vehicle: value));
    });
  }
}

/// @nodoc

class _$_UpdateVehicle implements _UpdateVehicle {
  _$_UpdateVehicle(this.vehicle);

  @override
  final Vehicle vehicle;

  @override
  String toString() {
    return 'MyVehicleEvent.updateVehicle(vehicle: $vehicle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateVehicle &&
            (identical(other.vehicle, vehicle) || other.vehicle == vehicle));
  }

  @override
  int get hashCode => Object.hash(runtimeType, vehicle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateVehicleCopyWith<_$_UpdateVehicle> get copyWith =>
      __$$_UpdateVehicleCopyWithImpl<_$_UpdateVehicle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) deleteVehicle,
    required TResult Function(Vehicle vehicle) cacheVehicle,
    required TResult Function(Vehicle vehicle) updateVehicle,
    required TResult Function() getCachedVehicles,
  }) {
    return updateVehicle(vehicle);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? deleteVehicle,
    TResult? Function(Vehicle vehicle)? cacheVehicle,
    TResult? Function(Vehicle vehicle)? updateVehicle,
    TResult? Function()? getCachedVehicles,
  }) {
    return updateVehicle?.call(vehicle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? deleteVehicle,
    TResult Function(Vehicle vehicle)? cacheVehicle,
    TResult Function(Vehicle vehicle)? updateVehicle,
    TResult Function()? getCachedVehicles,
    required TResult orElse(),
  }) {
    if (updateVehicle != null) {
      return updateVehicle(vehicle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteVehicle value) deleteVehicle,
    required TResult Function(_CacheVehicle value) cacheVehicle,
    required TResult Function(_UpdateVehicle value) updateVehicle,
    required TResult Function(_GetCachedVehicles value) getCachedVehicles,
  }) {
    return updateVehicle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteVehicle value)? deleteVehicle,
    TResult? Function(_CacheVehicle value)? cacheVehicle,
    TResult? Function(_UpdateVehicle value)? updateVehicle,
    TResult? Function(_GetCachedVehicles value)? getCachedVehicles,
  }) {
    return updateVehicle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteVehicle value)? deleteVehicle,
    TResult Function(_CacheVehicle value)? cacheVehicle,
    TResult Function(_UpdateVehicle value)? updateVehicle,
    TResult Function(_GetCachedVehicles value)? getCachedVehicles,
    required TResult orElse(),
  }) {
    if (updateVehicle != null) {
      return updateVehicle(this);
    }
    return orElse();
  }
}

abstract class _UpdateVehicle implements MyVehicleEvent {
  factory _UpdateVehicle(final Vehicle vehicle) = _$_UpdateVehicle;

  Vehicle get vehicle;
  @JsonKey(ignore: true)
  _$$_UpdateVehicleCopyWith<_$_UpdateVehicle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetCachedVehiclesCopyWith<$Res> {
  factory _$$_GetCachedVehiclesCopyWith(_$_GetCachedVehicles value,
          $Res Function(_$_GetCachedVehicles) then) =
      __$$_GetCachedVehiclesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetCachedVehiclesCopyWithImpl<$Res>
    extends _$MyVehicleEventCopyWithImpl<$Res, _$_GetCachedVehicles>
    implements _$$_GetCachedVehiclesCopyWith<$Res> {
  __$$_GetCachedVehiclesCopyWithImpl(
      _$_GetCachedVehicles _value, $Res Function(_$_GetCachedVehicles) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetCachedVehicles implements _GetCachedVehicles {
  _$_GetCachedVehicles();

  @override
  String toString() {
    return 'MyVehicleEvent.getCachedVehicles()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetCachedVehicles);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) deleteVehicle,
    required TResult Function(Vehicle vehicle) cacheVehicle,
    required TResult Function(Vehicle vehicle) updateVehicle,
    required TResult Function() getCachedVehicles,
  }) {
    return getCachedVehicles();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? deleteVehicle,
    TResult? Function(Vehicle vehicle)? cacheVehicle,
    TResult? Function(Vehicle vehicle)? updateVehicle,
    TResult? Function()? getCachedVehicles,
  }) {
    return getCachedVehicles?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? deleteVehicle,
    TResult Function(Vehicle vehicle)? cacheVehicle,
    TResult Function(Vehicle vehicle)? updateVehicle,
    TResult Function()? getCachedVehicles,
    required TResult orElse(),
  }) {
    if (getCachedVehicles != null) {
      return getCachedVehicles();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteVehicle value) deleteVehicle,
    required TResult Function(_CacheVehicle value) cacheVehicle,
    required TResult Function(_UpdateVehicle value) updateVehicle,
    required TResult Function(_GetCachedVehicles value) getCachedVehicles,
  }) {
    return getCachedVehicles(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteVehicle value)? deleteVehicle,
    TResult? Function(_CacheVehicle value)? cacheVehicle,
    TResult? Function(_UpdateVehicle value)? updateVehicle,
    TResult? Function(_GetCachedVehicles value)? getCachedVehicles,
  }) {
    return getCachedVehicles?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteVehicle value)? deleteVehicle,
    TResult Function(_CacheVehicle value)? cacheVehicle,
    TResult Function(_UpdateVehicle value)? updateVehicle,
    TResult Function(_GetCachedVehicles value)? getCachedVehicles,
    required TResult orElse(),
  }) {
    if (getCachedVehicles != null) {
      return getCachedVehicles(this);
    }
    return orElse();
  }
}

abstract class _GetCachedVehicles implements MyVehicleEvent {
  factory _GetCachedVehicles() = _$_GetCachedVehicles;
}
