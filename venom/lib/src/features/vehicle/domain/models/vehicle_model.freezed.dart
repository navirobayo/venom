// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vehicle_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Vehicle _$VehicleFromJson(Map<String, dynamic> json) {
  return _Vehicle.fromJson(json);
}

/// @nodoc
mixin _$Vehicle {
  @HiveField(0, defaultValue: '')
  String get id => throw _privateConstructorUsedError;
  @HiveField(1, defaultValue: '')
  String get name => throw _privateConstructorUsedError;
  @HiveField(2, defaultValue: '')
  String get tankCapacity => throw _privateConstructorUsedError;
  @HiveField(3, defaultValue: false)
  bool get isDefault => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VehicleCopyWith<Vehicle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleCopyWith<$Res> {
  factory $VehicleCopyWith(Vehicle value, $Res Function(Vehicle) then) =
      _$VehicleCopyWithImpl<$Res, Vehicle>;
  @useResult
  $Res call(
      {@HiveField(0, defaultValue: '') String id,
      @HiveField(1, defaultValue: '') String name,
      @HiveField(2, defaultValue: '') String tankCapacity,
      @HiveField(3, defaultValue: false) bool isDefault});
}

/// @nodoc
class _$VehicleCopyWithImpl<$Res, $Val extends Vehicle>
    implements $VehicleCopyWith<$Res> {
  _$VehicleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? tankCapacity = null,
    Object? isDefault = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      tankCapacity: null == tankCapacity
          ? _value.tankCapacity
          : tankCapacity // ignore: cast_nullable_to_non_nullable
              as String,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VehicleCopyWith<$Res> implements $VehicleCopyWith<$Res> {
  factory _$$_VehicleCopyWith(
          _$_Vehicle value, $Res Function(_$_Vehicle) then) =
      __$$_VehicleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0, defaultValue: '') String id,
      @HiveField(1, defaultValue: '') String name,
      @HiveField(2, defaultValue: '') String tankCapacity,
      @HiveField(3, defaultValue: false) bool isDefault});
}

/// @nodoc
class __$$_VehicleCopyWithImpl<$Res>
    extends _$VehicleCopyWithImpl<$Res, _$_Vehicle>
    implements _$$_VehicleCopyWith<$Res> {
  __$$_VehicleCopyWithImpl(_$_Vehicle _value, $Res Function(_$_Vehicle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? tankCapacity = null,
    Object? isDefault = null,
  }) {
    return _then(_$_Vehicle(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      tankCapacity: null == tankCapacity
          ? _value.tankCapacity
          : tankCapacity // ignore: cast_nullable_to_non_nullable
              as String,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Vehicle implements _Vehicle {
  _$_Vehicle(
      {@HiveField(0, defaultValue: '') this.id = '',
      @HiveField(1, defaultValue: '') this.name = '',
      @HiveField(2, defaultValue: '') this.tankCapacity = '',
      @HiveField(3, defaultValue: false) this.isDefault = false});

  factory _$_Vehicle.fromJson(Map<String, dynamic> json) =>
      _$$_VehicleFromJson(json);

  @override
  @JsonKey()
  @HiveField(0, defaultValue: '')
  final String id;
  @override
  @JsonKey()
  @HiveField(1, defaultValue: '')
  final String name;
  @override
  @JsonKey()
  @HiveField(2, defaultValue: '')
  final String tankCapacity;
  @override
  @JsonKey()
  @HiveField(3, defaultValue: false)
  final bool isDefault;

  @override
  String toString() {
    return 'Vehicle(id: $id, name: $name, tankCapacity: $tankCapacity, isDefault: $isDefault)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Vehicle &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.tankCapacity, tankCapacity) ||
                other.tankCapacity == tankCapacity) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, tankCapacity, isDefault);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VehicleCopyWith<_$_Vehicle> get copyWith =>
      __$$_VehicleCopyWithImpl<_$_Vehicle>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VehicleToJson(
      this,
    );
  }
}

abstract class _Vehicle implements Vehicle {
  factory _Vehicle(
      {@HiveField(0, defaultValue: '') final String id,
      @HiveField(1, defaultValue: '') final String name,
      @HiveField(2, defaultValue: '') final String tankCapacity,
      @HiveField(3, defaultValue: false) final bool isDefault}) = _$_Vehicle;

  factory _Vehicle.fromJson(Map<String, dynamic> json) = _$_Vehicle.fromJson;

  @override
  @HiveField(0, defaultValue: '')
  String get id;
  @override
  @HiveField(1, defaultValue: '')
  String get name;
  @override
  @HiveField(2, defaultValue: '')
  String get tankCapacity;
  @override
  @HiveField(3, defaultValue: false)
  bool get isDefault;
  @override
  @JsonKey(ignore: true)
  _$$_VehicleCopyWith<_$_Vehicle> get copyWith =>
      throw _privateConstructorUsedError;
}
