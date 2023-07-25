// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'default_price_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DefaultPriceState {
  Price? get price => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Price? price) idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Price? price)? idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Price? price)? idle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DefaultPriceStateCopyWith<DefaultPriceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DefaultPriceStateCopyWith<$Res> {
  factory $DefaultPriceStateCopyWith(
          DefaultPriceState value, $Res Function(DefaultPriceState) then) =
      _$DefaultPriceStateCopyWithImpl<$Res, DefaultPriceState>;
  @useResult
  $Res call({Price? price});

  $PriceCopyWith<$Res>? get price;
}

/// @nodoc
class _$DefaultPriceStateCopyWithImpl<$Res, $Val extends DefaultPriceState>
    implements $DefaultPriceStateCopyWith<$Res> {
  _$DefaultPriceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PriceCopyWith<$Res>? get price {
    if (_value.price == null) {
      return null;
    }

    return $PriceCopyWith<$Res>(_value.price!, (value) {
      return _then(_value.copyWith(price: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_IdleCopyWith<$Res>
    implements $DefaultPriceStateCopyWith<$Res> {
  factory _$$_IdleCopyWith(_$_Idle value, $Res Function(_$_Idle) then) =
      __$$_IdleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Price? price});

  @override
  $PriceCopyWith<$Res>? get price;
}

/// @nodoc
class __$$_IdleCopyWithImpl<$Res>
    extends _$DefaultPriceStateCopyWithImpl<$Res, _$_Idle>
    implements _$$_IdleCopyWith<$Res> {
  __$$_IdleCopyWithImpl(_$_Idle _value, $Res Function(_$_Idle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = freezed,
  }) {
    return _then(_$_Idle(
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price?,
    ));
  }
}

/// @nodoc

class _$_Idle implements _Idle {
  const _$_Idle({this.price});

  @override
  final Price? price;

  @override
  String toString() {
    return 'DefaultPriceState.idle(price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Idle &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(runtimeType, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IdleCopyWith<_$_Idle> get copyWith =>
      __$$_IdleCopyWithImpl<_$_Idle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Price? price) idle,
  }) {
    return idle(price);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Price? price)? idle,
  }) {
    return idle?.call(price);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Price? price)? idle,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(price);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _Idle implements DefaultPriceState {
  const factory _Idle({final Price? price}) = _$_Idle;

  @override
  Price? get price;
  @override
  @JsonKey(ignore: true)
  _$$_IdleCopyWith<_$_Idle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DefaultPriceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Price? price) setDefaultPrice,
    required TResult Function() readDefaultPrice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Price? price)? setDefaultPrice,
    TResult? Function()? readDefaultPrice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Price? price)? setDefaultPrice,
    TResult Function()? readDefaultPrice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetDefaultPrice value) setDefaultPrice,
    required TResult Function(_ReadDefaultPrice value) readDefaultPrice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetDefaultPrice value)? setDefaultPrice,
    TResult? Function(_ReadDefaultPrice value)? readDefaultPrice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetDefaultPrice value)? setDefaultPrice,
    TResult Function(_ReadDefaultPrice value)? readDefaultPrice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DefaultPriceEventCopyWith<$Res> {
  factory $DefaultPriceEventCopyWith(
          DefaultPriceEvent value, $Res Function(DefaultPriceEvent) then) =
      _$DefaultPriceEventCopyWithImpl<$Res, DefaultPriceEvent>;
}

/// @nodoc
class _$DefaultPriceEventCopyWithImpl<$Res, $Val extends DefaultPriceEvent>
    implements $DefaultPriceEventCopyWith<$Res> {
  _$DefaultPriceEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SetDefaultPriceCopyWith<$Res> {
  factory _$$_SetDefaultPriceCopyWith(
          _$_SetDefaultPrice value, $Res Function(_$_SetDefaultPrice) then) =
      __$$_SetDefaultPriceCopyWithImpl<$Res>;
  @useResult
  $Res call({Price? price});

  $PriceCopyWith<$Res>? get price;
}

/// @nodoc
class __$$_SetDefaultPriceCopyWithImpl<$Res>
    extends _$DefaultPriceEventCopyWithImpl<$Res, _$_SetDefaultPrice>
    implements _$$_SetDefaultPriceCopyWith<$Res> {
  __$$_SetDefaultPriceCopyWithImpl(
      _$_SetDefaultPrice _value, $Res Function(_$_SetDefaultPrice) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = freezed,
  }) {
    return _then(_$_SetDefaultPrice(
      freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PriceCopyWith<$Res>? get price {
    if (_value.price == null) {
      return null;
    }

    return $PriceCopyWith<$Res>(_value.price!, (value) {
      return _then(_value.copyWith(price: value));
    });
  }
}

/// @nodoc

class _$_SetDefaultPrice implements _SetDefaultPrice {
  _$_SetDefaultPrice(this.price);

  @override
  final Price? price;

  @override
  String toString() {
    return 'DefaultPriceEvent.setDefaultPrice(price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetDefaultPrice &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(runtimeType, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetDefaultPriceCopyWith<_$_SetDefaultPrice> get copyWith =>
      __$$_SetDefaultPriceCopyWithImpl<_$_SetDefaultPrice>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Price? price) setDefaultPrice,
    required TResult Function() readDefaultPrice,
  }) {
    return setDefaultPrice(price);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Price? price)? setDefaultPrice,
    TResult? Function()? readDefaultPrice,
  }) {
    return setDefaultPrice?.call(price);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Price? price)? setDefaultPrice,
    TResult Function()? readDefaultPrice,
    required TResult orElse(),
  }) {
    if (setDefaultPrice != null) {
      return setDefaultPrice(price);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetDefaultPrice value) setDefaultPrice,
    required TResult Function(_ReadDefaultPrice value) readDefaultPrice,
  }) {
    return setDefaultPrice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetDefaultPrice value)? setDefaultPrice,
    TResult? Function(_ReadDefaultPrice value)? readDefaultPrice,
  }) {
    return setDefaultPrice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetDefaultPrice value)? setDefaultPrice,
    TResult Function(_ReadDefaultPrice value)? readDefaultPrice,
    required TResult orElse(),
  }) {
    if (setDefaultPrice != null) {
      return setDefaultPrice(this);
    }
    return orElse();
  }
}

abstract class _SetDefaultPrice implements DefaultPriceEvent {
  factory _SetDefaultPrice(final Price? price) = _$_SetDefaultPrice;

  Price? get price;
  @JsonKey(ignore: true)
  _$$_SetDefaultPriceCopyWith<_$_SetDefaultPrice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ReadDefaultPriceCopyWith<$Res> {
  factory _$$_ReadDefaultPriceCopyWith(
          _$_ReadDefaultPrice value, $Res Function(_$_ReadDefaultPrice) then) =
      __$$_ReadDefaultPriceCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ReadDefaultPriceCopyWithImpl<$Res>
    extends _$DefaultPriceEventCopyWithImpl<$Res, _$_ReadDefaultPrice>
    implements _$$_ReadDefaultPriceCopyWith<$Res> {
  __$$_ReadDefaultPriceCopyWithImpl(
      _$_ReadDefaultPrice _value, $Res Function(_$_ReadDefaultPrice) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ReadDefaultPrice implements _ReadDefaultPrice {
  _$_ReadDefaultPrice();

  @override
  String toString() {
    return 'DefaultPriceEvent.readDefaultPrice()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ReadDefaultPrice);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Price? price) setDefaultPrice,
    required TResult Function() readDefaultPrice,
  }) {
    return readDefaultPrice();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Price? price)? setDefaultPrice,
    TResult? Function()? readDefaultPrice,
  }) {
    return readDefaultPrice?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Price? price)? setDefaultPrice,
    TResult Function()? readDefaultPrice,
    required TResult orElse(),
  }) {
    if (readDefaultPrice != null) {
      return readDefaultPrice();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetDefaultPrice value) setDefaultPrice,
    required TResult Function(_ReadDefaultPrice value) readDefaultPrice,
  }) {
    return readDefaultPrice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetDefaultPrice value)? setDefaultPrice,
    TResult? Function(_ReadDefaultPrice value)? readDefaultPrice,
  }) {
    return readDefaultPrice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetDefaultPrice value)? setDefaultPrice,
    TResult Function(_ReadDefaultPrice value)? readDefaultPrice,
    required TResult orElse(),
  }) {
    if (readDefaultPrice != null) {
      return readDefaultPrice(this);
    }
    return orElse();
  }
}

abstract class _ReadDefaultPrice implements DefaultPriceEvent {
  factory _ReadDefaultPrice() = _$_ReadDefaultPrice;
}
