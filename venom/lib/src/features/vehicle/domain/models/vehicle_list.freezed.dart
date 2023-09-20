// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vehicle_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VehicleList _$VehicleListFromJson(Map<String, dynamic> json) {
  return _VehicleList.fromJson(json);
}

/// @nodoc
mixin _$VehicleList {
  @HiveField(0, defaultValue: <Vehicle>[])
  List<Vehicle> get vehicles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VehicleListCopyWith<VehicleList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleListCopyWith<$Res> {
  factory $VehicleListCopyWith(
          VehicleList value, $Res Function(VehicleList) then) =
      _$VehicleListCopyWithImpl<$Res, VehicleList>;
  @useResult
  $Res call({@HiveField(0, defaultValue: <Vehicle>[]) List<Vehicle> vehicles});
}

/// @nodoc
class _$VehicleListCopyWithImpl<$Res, $Val extends VehicleList>
    implements $VehicleListCopyWith<$Res> {
  _$VehicleListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vehicles = null,
  }) {
    return _then(_value.copyWith(
      vehicles: null == vehicles
          ? _value.vehicles
          : vehicles // ignore: cast_nullable_to_non_nullable
              as List<Vehicle>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VehicleListCopyWith<$Res>
    implements $VehicleListCopyWith<$Res> {
  factory _$$_VehicleListCopyWith(
          _$_VehicleList value, $Res Function(_$_VehicleList) then) =
      __$$_VehicleListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0, defaultValue: <Vehicle>[]) List<Vehicle> vehicles});
}

/// @nodoc
class __$$_VehicleListCopyWithImpl<$Res>
    extends _$VehicleListCopyWithImpl<$Res, _$_VehicleList>
    implements _$$_VehicleListCopyWith<$Res> {
  __$$_VehicleListCopyWithImpl(
      _$_VehicleList _value, $Res Function(_$_VehicleList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vehicles = null,
  }) {
    return _then(_$_VehicleList(
      vehicles: null == vehicles
          ? _value._vehicles
          : vehicles // ignore: cast_nullable_to_non_nullable
              as List<Vehicle>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VehicleList implements _VehicleList {
  _$_VehicleList(
      {@HiveField(0, defaultValue: <Vehicle>[])
      final List<Vehicle> vehicles = const <Vehicle>[]})
      : _vehicles = vehicles;

  factory _$_VehicleList.fromJson(Map<String, dynamic> json) =>
      _$$_VehicleListFromJson(json);

  final List<Vehicle> _vehicles;
  @override
  @JsonKey()
  @HiveField(0, defaultValue: <Vehicle>[])
  List<Vehicle> get vehicles {
    if (_vehicles is EqualUnmodifiableListView) return _vehicles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_vehicles);
  }

  @override
  String toString() {
    return 'VehicleList(vehicles: $vehicles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VehicleList &&
            const DeepCollectionEquality().equals(other._vehicles, _vehicles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_vehicles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VehicleListCopyWith<_$_VehicleList> get copyWith =>
      __$$_VehicleListCopyWithImpl<_$_VehicleList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VehicleListToJson(
      this,
    );
  }
}

abstract class _VehicleList implements VehicleList {
  factory _VehicleList(
      {@HiveField(0, defaultValue: <Vehicle>[])
      final List<Vehicle> vehicles}) = _$_VehicleList;

  factory _VehicleList.fromJson(Map<String, dynamic> json) =
      _$_VehicleList.fromJson;

  @override
  @HiveField(0, defaultValue: <Vehicle>[])
  List<Vehicle> get vehicles;
  @override
  @JsonKey(ignore: true)
  _$$_VehicleListCopyWith<_$_VehicleList> get copyWith =>
      throw _privateConstructorUsedError;
}
