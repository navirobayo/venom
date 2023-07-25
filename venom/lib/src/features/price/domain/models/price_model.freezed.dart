// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'price_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Price _$PriceFromJson(Map<String, dynamic> json) {
  return _Price.fromJson(json);
}

/// @nodoc
mixin _$Price {
  @HiveField(0, defaultValue: 0)
  int get id => throw _privateConstructorUsedError;
  @HiveField(1, defaultValue: 0.0)
  double get price => throw _privateConstructorUsedError;
  @HiveField(2, defaultValue: '')
  String get placeOfPurchase => throw _privateConstructorUsedError;
  @HiveField(3, defaultValue: false)
  bool get isDefault => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PriceCopyWith<Price> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceCopyWith<$Res> {
  factory $PriceCopyWith(Price value, $Res Function(Price) then) =
      _$PriceCopyWithImpl<$Res, Price>;
  @useResult
  $Res call(
      {@HiveField(0, defaultValue: 0) int id,
      @HiveField(1, defaultValue: 0.0) double price,
      @HiveField(2, defaultValue: '') String placeOfPurchase,
      @HiveField(3, defaultValue: false) bool isDefault});
}

/// @nodoc
class _$PriceCopyWithImpl<$Res, $Val extends Price>
    implements $PriceCopyWith<$Res> {
  _$PriceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? price = null,
    Object? placeOfPurchase = null,
    Object? isDefault = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      placeOfPurchase: null == placeOfPurchase
          ? _value.placeOfPurchase
          : placeOfPurchase // ignore: cast_nullable_to_non_nullable
              as String,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PriceCopyWith<$Res> implements $PriceCopyWith<$Res> {
  factory _$$_PriceCopyWith(_$_Price value, $Res Function(_$_Price) then) =
      __$$_PriceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0, defaultValue: 0) int id,
      @HiveField(1, defaultValue: 0.0) double price,
      @HiveField(2, defaultValue: '') String placeOfPurchase,
      @HiveField(3, defaultValue: false) bool isDefault});
}

/// @nodoc
class __$$_PriceCopyWithImpl<$Res> extends _$PriceCopyWithImpl<$Res, _$_Price>
    implements _$$_PriceCopyWith<$Res> {
  __$$_PriceCopyWithImpl(_$_Price _value, $Res Function(_$_Price) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? price = null,
    Object? placeOfPurchase = null,
    Object? isDefault = null,
  }) {
    return _then(_$_Price(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      placeOfPurchase: null == placeOfPurchase
          ? _value.placeOfPurchase
          : placeOfPurchase // ignore: cast_nullable_to_non_nullable
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
class _$_Price implements _Price {
  _$_Price(
      {@HiveField(0, defaultValue: 0) this.id = 0,
      @HiveField(1, defaultValue: 0.0) this.price = 0.0,
      @HiveField(2, defaultValue: '') this.placeOfPurchase = '',
      @HiveField(3, defaultValue: false) this.isDefault = false});

  factory _$_Price.fromJson(Map<String, dynamic> json) =>
      _$$_PriceFromJson(json);

  @override
  @JsonKey()
  @HiveField(0, defaultValue: 0)
  final int id;
  @override
  @JsonKey()
  @HiveField(1, defaultValue: 0.0)
  final double price;
  @override
  @JsonKey()
  @HiveField(2, defaultValue: '')
  final String placeOfPurchase;
  @override
  @JsonKey()
  @HiveField(3, defaultValue: false)
  final bool isDefault;

  @override
  String toString() {
    return 'Price(id: $id, price: $price, placeOfPurchase: $placeOfPurchase, isDefault: $isDefault)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Price &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.placeOfPurchase, placeOfPurchase) ||
                other.placeOfPurchase == placeOfPurchase) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, price, placeOfPurchase, isDefault);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PriceCopyWith<_$_Price> get copyWith =>
      __$$_PriceCopyWithImpl<_$_Price>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PriceToJson(
      this,
    );
  }
}

abstract class _Price implements Price {
  factory _Price(
      {@HiveField(0, defaultValue: 0) final int id,
      @HiveField(1, defaultValue: 0.0) final double price,
      @HiveField(2, defaultValue: '') final String placeOfPurchase,
      @HiveField(3, defaultValue: false) final bool isDefault}) = _$_Price;

  factory _Price.fromJson(Map<String, dynamic> json) = _$_Price.fromJson;

  @override
  @HiveField(0, defaultValue: 0)
  int get id;
  @override
  @HiveField(1, defaultValue: 0.0)
  double get price;
  @override
  @HiveField(2, defaultValue: '')
  String get placeOfPurchase;
  @override
  @HiveField(3, defaultValue: false)
  bool get isDefault;
  @override
  @JsonKey(ignore: true)
  _$$_PriceCopyWith<_$_Price> get copyWith =>
      throw _privateConstructorUsedError;
}
