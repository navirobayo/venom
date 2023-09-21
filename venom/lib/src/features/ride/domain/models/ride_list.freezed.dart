// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ride_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RideList _$RideListFromJson(Map<String, dynamic> json) {
  return _RideList.fromJson(json);
}

/// @nodoc
mixin _$RideList {
  @HiveField(0, defaultValue: <Ride>[])
  List<Ride> get rides => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RideListCopyWith<RideList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RideListCopyWith<$Res> {
  factory $RideListCopyWith(RideList value, $Res Function(RideList) then) =
      _$RideListCopyWithImpl<$Res, RideList>;
  @useResult
  $Res call({@HiveField(0, defaultValue: <Ride>[]) List<Ride> rides});
}

/// @nodoc
class _$RideListCopyWithImpl<$Res, $Val extends RideList>
    implements $RideListCopyWith<$Res> {
  _$RideListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rides = null,
  }) {
    return _then(_value.copyWith(
      rides: null == rides
          ? _value.rides
          : rides // ignore: cast_nullable_to_non_nullable
              as List<Ride>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RideListCopyWith<$Res> implements $RideListCopyWith<$Res> {
  factory _$$_RideListCopyWith(
          _$_RideList value, $Res Function(_$_RideList) then) =
      __$$_RideListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0, defaultValue: <Ride>[]) List<Ride> rides});
}

/// @nodoc
class __$$_RideListCopyWithImpl<$Res>
    extends _$RideListCopyWithImpl<$Res, _$_RideList>
    implements _$$_RideListCopyWith<$Res> {
  __$$_RideListCopyWithImpl(
      _$_RideList _value, $Res Function(_$_RideList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rides = null,
  }) {
    return _then(_$_RideList(
      rides: null == rides
          ? _value._rides
          : rides // ignore: cast_nullable_to_non_nullable
              as List<Ride>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RideList implements _RideList {
  _$_RideList(
      {@HiveField(0, defaultValue: <Ride>[])
      final List<Ride> rides = const <Ride>[]})
      : _rides = rides;

  factory _$_RideList.fromJson(Map<String, dynamic> json) =>
      _$$_RideListFromJson(json);

  final List<Ride> _rides;
  @override
  @JsonKey()
  @HiveField(0, defaultValue: <Ride>[])
  List<Ride> get rides {
    if (_rides is EqualUnmodifiableListView) return _rides;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rides);
  }

  @override
  String toString() {
    return 'RideList(rides: $rides)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RideList &&
            const DeepCollectionEquality().equals(other._rides, _rides));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_rides));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RideListCopyWith<_$_RideList> get copyWith =>
      __$$_RideListCopyWithImpl<_$_RideList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RideListToJson(
      this,
    );
  }
}

abstract class _RideList implements RideList {
  factory _RideList(
          {@HiveField(0, defaultValue: <Ride>[]) final List<Ride> rides}) =
      _$_RideList;

  factory _RideList.fromJson(Map<String, dynamic> json) = _$_RideList.fromJson;

  @override
  @HiveField(0, defaultValue: <Ride>[])
  List<Ride> get rides;
  @override
  @JsonKey(ignore: true)
  _$$_RideListCopyWith<_$_RideList> get copyWith =>
      throw _privateConstructorUsedError;
}
