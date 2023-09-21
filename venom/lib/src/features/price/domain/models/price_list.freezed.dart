// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'price_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PriceList _$PriceListFromJson(Map<String, dynamic> json) {
  return _PriceList.fromJson(json);
}

/// @nodoc
mixin _$PriceList {
  @HiveField(0, defaultValue: <Price>[])
  List<Price> get prices => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PriceListCopyWith<PriceList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceListCopyWith<$Res> {
  factory $PriceListCopyWith(PriceList value, $Res Function(PriceList) then) =
      _$PriceListCopyWithImpl<$Res, PriceList>;
  @useResult
  $Res call({@HiveField(0, defaultValue: <Price>[]) List<Price> prices});
}

/// @nodoc
class _$PriceListCopyWithImpl<$Res, $Val extends PriceList>
    implements $PriceListCopyWith<$Res> {
  _$PriceListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prices = null,
  }) {
    return _then(_value.copyWith(
      prices: null == prices
          ? _value.prices
          : prices // ignore: cast_nullable_to_non_nullable
              as List<Price>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PriceListCopyWith<$Res> implements $PriceListCopyWith<$Res> {
  factory _$$_PriceListCopyWith(
          _$_PriceList value, $Res Function(_$_PriceList) then) =
      __$$_PriceListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0, defaultValue: <Price>[]) List<Price> prices});
}

/// @nodoc
class __$$_PriceListCopyWithImpl<$Res>
    extends _$PriceListCopyWithImpl<$Res, _$_PriceList>
    implements _$$_PriceListCopyWith<$Res> {
  __$$_PriceListCopyWithImpl(
      _$_PriceList _value, $Res Function(_$_PriceList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prices = null,
  }) {
    return _then(_$_PriceList(
      prices: null == prices
          ? _value._prices
          : prices // ignore: cast_nullable_to_non_nullable
              as List<Price>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PriceList implements _PriceList {
  _$_PriceList(
      {@HiveField(0, defaultValue: <Price>[])
      final List<Price> prices = const <Price>[]})
      : _prices = prices;

  factory _$_PriceList.fromJson(Map<String, dynamic> json) =>
      _$$_PriceListFromJson(json);

  final List<Price> _prices;
  @override
  @JsonKey()
  @HiveField(0, defaultValue: <Price>[])
  List<Price> get prices {
    if (_prices is EqualUnmodifiableListView) return _prices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_prices);
  }

  @override
  String toString() {
    return 'PriceList(prices: $prices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PriceList &&
            const DeepCollectionEquality().equals(other._prices, _prices));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_prices));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PriceListCopyWith<_$_PriceList> get copyWith =>
      __$$_PriceListCopyWithImpl<_$_PriceList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PriceListToJson(
      this,
    );
  }
}

abstract class _PriceList implements PriceList {
  factory _PriceList(
          {@HiveField(0, defaultValue: <Price>[]) final List<Price> prices}) =
      _$_PriceList;

  factory _PriceList.fromJson(Map<String, dynamic> json) =
      _$_PriceList.fromJson;

  @override
  @HiveField(0, defaultValue: <Price>[])
  List<Price> get prices;
  @override
  @JsonKey(ignore: true)
  _$$_PriceListCopyWith<_$_PriceList> get copyWith =>
      throw _privateConstructorUsedError;
}
