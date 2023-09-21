// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ride_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Ride _$RideFromJson(Map<String, dynamic> json) {
  return _Ride.fromJson(json);
}

/// @nodoc
mixin _$Ride {
  @HiveField(0, defaultValue: '')
  String get id => throw _privateConstructorUsedError;
  @HiveField(1, defaultValue: '')
  String get timeTraveled => throw _privateConstructorUsedError;
  @HiveField(2, defaultValue: '')
  String get distanceTravelled => throw _privateConstructorUsedError;
  @HiveField(3, defaultValue: '')
  String get gasUsed => throw _privateConstructorUsedError;
  @HiveField(4, defaultValue: '')
  String get gasPrice => throw _privateConstructorUsedError;
  @HiveField(5, defaultValue: '')
  String get averageSpeed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RideCopyWith<Ride> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RideCopyWith<$Res> {
  factory $RideCopyWith(Ride value, $Res Function(Ride) then) =
      _$RideCopyWithImpl<$Res, Ride>;
  @useResult
  $Res call(
      {@HiveField(0, defaultValue: '') String id,
      @HiveField(1, defaultValue: '') String timeTraveled,
      @HiveField(2, defaultValue: '') String distanceTravelled,
      @HiveField(3, defaultValue: '') String gasUsed,
      @HiveField(4, defaultValue: '') String gasPrice,
      @HiveField(5, defaultValue: '') String averageSpeed});
}

/// @nodoc
class _$RideCopyWithImpl<$Res, $Val extends Ride>
    implements $RideCopyWith<$Res> {
  _$RideCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? timeTraveled = null,
    Object? distanceTravelled = null,
    Object? gasUsed = null,
    Object? gasPrice = null,
    Object? averageSpeed = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      timeTraveled: null == timeTraveled
          ? _value.timeTraveled
          : timeTraveled // ignore: cast_nullable_to_non_nullable
              as String,
      distanceTravelled: null == distanceTravelled
          ? _value.distanceTravelled
          : distanceTravelled // ignore: cast_nullable_to_non_nullable
              as String,
      gasUsed: null == gasUsed
          ? _value.gasUsed
          : gasUsed // ignore: cast_nullable_to_non_nullable
              as String,
      gasPrice: null == gasPrice
          ? _value.gasPrice
          : gasPrice // ignore: cast_nullable_to_non_nullable
              as String,
      averageSpeed: null == averageSpeed
          ? _value.averageSpeed
          : averageSpeed // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RideCopyWith<$Res> implements $RideCopyWith<$Res> {
  factory _$$_RideCopyWith(_$_Ride value, $Res Function(_$_Ride) then) =
      __$$_RideCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0, defaultValue: '') String id,
      @HiveField(1, defaultValue: '') String timeTraveled,
      @HiveField(2, defaultValue: '') String distanceTravelled,
      @HiveField(3, defaultValue: '') String gasUsed,
      @HiveField(4, defaultValue: '') String gasPrice,
      @HiveField(5, defaultValue: '') String averageSpeed});
}

/// @nodoc
class __$$_RideCopyWithImpl<$Res> extends _$RideCopyWithImpl<$Res, _$_Ride>
    implements _$$_RideCopyWith<$Res> {
  __$$_RideCopyWithImpl(_$_Ride _value, $Res Function(_$_Ride) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? timeTraveled = null,
    Object? distanceTravelled = null,
    Object? gasUsed = null,
    Object? gasPrice = null,
    Object? averageSpeed = null,
  }) {
    return _then(_$_Ride(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      timeTraveled: null == timeTraveled
          ? _value.timeTraveled
          : timeTraveled // ignore: cast_nullable_to_non_nullable
              as String,
      distanceTravelled: null == distanceTravelled
          ? _value.distanceTravelled
          : distanceTravelled // ignore: cast_nullable_to_non_nullable
              as String,
      gasUsed: null == gasUsed
          ? _value.gasUsed
          : gasUsed // ignore: cast_nullable_to_non_nullable
              as String,
      gasPrice: null == gasPrice
          ? _value.gasPrice
          : gasPrice // ignore: cast_nullable_to_non_nullable
              as String,
      averageSpeed: null == averageSpeed
          ? _value.averageSpeed
          : averageSpeed // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Ride implements _Ride {
  _$_Ride(
      {@HiveField(0, defaultValue: '') this.id = '0',
      @HiveField(1, defaultValue: '') this.timeTraveled = '0',
      @HiveField(2, defaultValue: '') this.distanceTravelled = '0',
      @HiveField(3, defaultValue: '') this.gasUsed = '0',
      @HiveField(4, defaultValue: '') this.gasPrice = '0',
      @HiveField(5, defaultValue: '') this.averageSpeed = '0'});

  factory _$_Ride.fromJson(Map<String, dynamic> json) => _$$_RideFromJson(json);

  @override
  @JsonKey()
  @HiveField(0, defaultValue: '')
  final String id;
  @override
  @JsonKey()
  @HiveField(1, defaultValue: '')
  final String timeTraveled;
  @override
  @JsonKey()
  @HiveField(2, defaultValue: '')
  final String distanceTravelled;
  @override
  @JsonKey()
  @HiveField(3, defaultValue: '')
  final String gasUsed;
  @override
  @JsonKey()
  @HiveField(4, defaultValue: '')
  final String gasPrice;
  @override
  @JsonKey()
  @HiveField(5, defaultValue: '')
  final String averageSpeed;

  @override
  String toString() {
    return 'Ride(id: $id, timeTraveled: $timeTraveled, distanceTravelled: $distanceTravelled, gasUsed: $gasUsed, gasPrice: $gasPrice, averageSpeed: $averageSpeed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Ride &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.timeTraveled, timeTraveled) ||
                other.timeTraveled == timeTraveled) &&
            (identical(other.distanceTravelled, distanceTravelled) ||
                other.distanceTravelled == distanceTravelled) &&
            (identical(other.gasUsed, gasUsed) || other.gasUsed == gasUsed) &&
            (identical(other.gasPrice, gasPrice) ||
                other.gasPrice == gasPrice) &&
            (identical(other.averageSpeed, averageSpeed) ||
                other.averageSpeed == averageSpeed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, timeTraveled,
      distanceTravelled, gasUsed, gasPrice, averageSpeed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RideCopyWith<_$_Ride> get copyWith =>
      __$$_RideCopyWithImpl<_$_Ride>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RideToJson(
      this,
    );
  }
}

abstract class _Ride implements Ride {
  factory _Ride(
      {@HiveField(0, defaultValue: '') final String id,
      @HiveField(1, defaultValue: '') final String timeTraveled,
      @HiveField(2, defaultValue: '') final String distanceTravelled,
      @HiveField(3, defaultValue: '') final String gasUsed,
      @HiveField(4, defaultValue: '') final String gasPrice,
      @HiveField(5, defaultValue: '') final String averageSpeed}) = _$_Ride;

  factory _Ride.fromJson(Map<String, dynamic> json) = _$_Ride.fromJson;

  @override
  @HiveField(0, defaultValue: '')
  String get id;
  @override
  @HiveField(1, defaultValue: '')
  String get timeTraveled;
  @override
  @HiveField(2, defaultValue: '')
  String get distanceTravelled;
  @override
  @HiveField(3, defaultValue: '')
  String get gasUsed;
  @override
  @HiveField(4, defaultValue: '')
  String get gasPrice;
  @override
  @HiveField(5, defaultValue: '')
  String get averageSpeed;
  @override
  @JsonKey(ignore: true)
  _$$_RideCopyWith<_$_Ride> get copyWith => throw _privateConstructorUsedError;
}
