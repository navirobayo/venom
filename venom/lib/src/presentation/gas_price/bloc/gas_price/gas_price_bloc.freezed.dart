// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gas_price_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GasPriceState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Price> prices) idle,
    required TResult Function(String message, PriceFailure failure) failure,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Price> prices)? idle,
    TResult? Function(String message, PriceFailure failure)? failure,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Price> prices)? idle,
    TResult Function(String message, PriceFailure failure)? failure,
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
abstract class $GasPriceStateCopyWith<$Res> {
  factory $GasPriceStateCopyWith(
          GasPriceState value, $Res Function(GasPriceState) then) =
      _$GasPriceStateCopyWithImpl<$Res, GasPriceState>;
}

/// @nodoc
class _$GasPriceStateCopyWithImpl<$Res, $Val extends GasPriceState>
    implements $GasPriceStateCopyWith<$Res> {
  _$GasPriceStateCopyWithImpl(this._value, this._then);

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
  $Res call({List<Price> prices});
}

/// @nodoc
class __$$_IdleCopyWithImpl<$Res>
    extends _$GasPriceStateCopyWithImpl<$Res, _$_Idle>
    implements _$$_IdleCopyWith<$Res> {
  __$$_IdleCopyWithImpl(_$_Idle _value, $Res Function(_$_Idle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prices = null,
  }) {
    return _then(_$_Idle(
      null == prices
          ? _value._prices
          : prices // ignore: cast_nullable_to_non_nullable
              as List<Price>,
    ));
  }
}

/// @nodoc

class _$_Idle implements _Idle {
  const _$_Idle(final List<Price> prices) : _prices = prices;

  final List<Price> _prices;
  @override
  List<Price> get prices {
    if (_prices is EqualUnmodifiableListView) return _prices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_prices);
  }

  @override
  String toString() {
    return 'GasPriceState.idle(prices: $prices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Idle &&
            const DeepCollectionEquality().equals(other._prices, _prices));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_prices));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IdleCopyWith<_$_Idle> get copyWith =>
      __$$_IdleCopyWithImpl<_$_Idle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Price> prices) idle,
    required TResult Function(String message, PriceFailure failure) failure,
    required TResult Function() loading,
  }) {
    return idle(prices);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Price> prices)? idle,
    TResult? Function(String message, PriceFailure failure)? failure,
    TResult? Function()? loading,
  }) {
    return idle?.call(prices);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Price> prices)? idle,
    TResult Function(String message, PriceFailure failure)? failure,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(prices);
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

abstract class _Idle implements GasPriceState {
  const factory _Idle(final List<Price> prices) = _$_Idle;

  List<Price> get prices;
  @JsonKey(ignore: true)
  _$$_IdleCopyWith<_$_Idle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, PriceFailure failure});

  $PriceFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res>
    extends _$GasPriceStateCopyWithImpl<$Res, _$_Failure>
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
              as PriceFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PriceFailureCopyWith<$Res> get failure {
    return $PriceFailureCopyWith<$Res>(_value.failure, (value) {
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
  final PriceFailure failure;

  @override
  String toString() {
    return 'GasPriceState.failure(message: $message, failure: $failure)';
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
    required TResult Function(List<Price> prices) idle,
    required TResult Function(String message, PriceFailure failure) failure,
    required TResult Function() loading,
  }) {
    return failure(message, this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Price> prices)? idle,
    TResult? Function(String message, PriceFailure failure)? failure,
    TResult? Function()? loading,
  }) {
    return failure?.call(message, this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Price> prices)? idle,
    TResult Function(String message, PriceFailure failure)? failure,
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

abstract class _Failure implements GasPriceState {
  const factory _Failure(final String message, final PriceFailure failure) =
      _$_Failure;

  String get message;
  PriceFailure get failure;
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
    extends _$GasPriceStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'GasPriceState.loading()';
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
    required TResult Function(List<Price> prices) idle,
    required TResult Function(String message, PriceFailure failure) failure,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Price> prices)? idle,
    TResult? Function(String message, PriceFailure failure)? failure,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Price> prices)? idle,
    TResult Function(String message, PriceFailure failure)? failure,
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

abstract class _Loading implements GasPriceState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
mixin _$GasPriceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) deletePrice,
    required TResult Function(Price price) cachePrice,
    required TResult Function(Price price) updatePrice,
    required TResult Function() getCachedPrices,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? deletePrice,
    TResult? Function(Price price)? cachePrice,
    TResult? Function(Price price)? updatePrice,
    TResult? Function()? getCachedPrices,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? deletePrice,
    TResult Function(Price price)? cachePrice,
    TResult Function(Price price)? updatePrice,
    TResult Function()? getCachedPrices,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeletePrice value) deletePrice,
    required TResult Function(_CachePrice value) cachePrice,
    required TResult Function(_UpdatePrice value) updatePrice,
    required TResult Function(_GetCachedPrices value) getCachedPrices,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeletePrice value)? deletePrice,
    TResult? Function(_CachePrice value)? cachePrice,
    TResult? Function(_UpdatePrice value)? updatePrice,
    TResult? Function(_GetCachedPrices value)? getCachedPrices,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeletePrice value)? deletePrice,
    TResult Function(_CachePrice value)? cachePrice,
    TResult Function(_UpdatePrice value)? updatePrice,
    TResult Function(_GetCachedPrices value)? getCachedPrices,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GasPriceEventCopyWith<$Res> {
  factory $GasPriceEventCopyWith(
          GasPriceEvent value, $Res Function(GasPriceEvent) then) =
      _$GasPriceEventCopyWithImpl<$Res, GasPriceEvent>;
}

/// @nodoc
class _$GasPriceEventCopyWithImpl<$Res, $Val extends GasPriceEvent>
    implements $GasPriceEventCopyWith<$Res> {
  _$GasPriceEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_DeletePriceCopyWith<$Res> {
  factory _$$_DeletePriceCopyWith(
          _$_DeletePrice value, $Res Function(_$_DeletePrice) then) =
      __$$_DeletePriceCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$_DeletePriceCopyWithImpl<$Res>
    extends _$GasPriceEventCopyWithImpl<$Res, _$_DeletePrice>
    implements _$$_DeletePriceCopyWith<$Res> {
  __$$_DeletePriceCopyWithImpl(
      _$_DeletePrice _value, $Res Function(_$_DeletePrice) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$_DeletePrice(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DeletePrice implements _DeletePrice {
  _$_DeletePrice(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'GasPriceEvent.deletePrice(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeletePrice &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeletePriceCopyWith<_$_DeletePrice> get copyWith =>
      __$$_DeletePriceCopyWithImpl<_$_DeletePrice>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) deletePrice,
    required TResult Function(Price price) cachePrice,
    required TResult Function(Price price) updatePrice,
    required TResult Function() getCachedPrices,
  }) {
    return deletePrice(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? deletePrice,
    TResult? Function(Price price)? cachePrice,
    TResult? Function(Price price)? updatePrice,
    TResult? Function()? getCachedPrices,
  }) {
    return deletePrice?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? deletePrice,
    TResult Function(Price price)? cachePrice,
    TResult Function(Price price)? updatePrice,
    TResult Function()? getCachedPrices,
    required TResult orElse(),
  }) {
    if (deletePrice != null) {
      return deletePrice(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeletePrice value) deletePrice,
    required TResult Function(_CachePrice value) cachePrice,
    required TResult Function(_UpdatePrice value) updatePrice,
    required TResult Function(_GetCachedPrices value) getCachedPrices,
  }) {
    return deletePrice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeletePrice value)? deletePrice,
    TResult? Function(_CachePrice value)? cachePrice,
    TResult? Function(_UpdatePrice value)? updatePrice,
    TResult? Function(_GetCachedPrices value)? getCachedPrices,
  }) {
    return deletePrice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeletePrice value)? deletePrice,
    TResult Function(_CachePrice value)? cachePrice,
    TResult Function(_UpdatePrice value)? updatePrice,
    TResult Function(_GetCachedPrices value)? getCachedPrices,
    required TResult orElse(),
  }) {
    if (deletePrice != null) {
      return deletePrice(this);
    }
    return orElse();
  }
}

abstract class _DeletePrice implements GasPriceEvent {
  factory _DeletePrice(final int index) = _$_DeletePrice;

  int get index;
  @JsonKey(ignore: true)
  _$$_DeletePriceCopyWith<_$_DeletePrice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CachePriceCopyWith<$Res> {
  factory _$$_CachePriceCopyWith(
          _$_CachePrice value, $Res Function(_$_CachePrice) then) =
      __$$_CachePriceCopyWithImpl<$Res>;
  @useResult
  $Res call({Price price});

  $PriceCopyWith<$Res> get price;
}

/// @nodoc
class __$$_CachePriceCopyWithImpl<$Res>
    extends _$GasPriceEventCopyWithImpl<$Res, _$_CachePrice>
    implements _$$_CachePriceCopyWith<$Res> {
  __$$_CachePriceCopyWithImpl(
      _$_CachePrice _value, $Res Function(_$_CachePrice) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
  }) {
    return _then(_$_CachePrice(
      null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PriceCopyWith<$Res> get price {
    return $PriceCopyWith<$Res>(_value.price, (value) {
      return _then(_value.copyWith(price: value));
    });
  }
}

/// @nodoc

class _$_CachePrice implements _CachePrice {
  _$_CachePrice(this.price);

  @override
  final Price price;

  @override
  String toString() {
    return 'GasPriceEvent.cachePrice(price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CachePrice &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(runtimeType, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CachePriceCopyWith<_$_CachePrice> get copyWith =>
      __$$_CachePriceCopyWithImpl<_$_CachePrice>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) deletePrice,
    required TResult Function(Price price) cachePrice,
    required TResult Function(Price price) updatePrice,
    required TResult Function() getCachedPrices,
  }) {
    return cachePrice(price);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? deletePrice,
    TResult? Function(Price price)? cachePrice,
    TResult? Function(Price price)? updatePrice,
    TResult? Function()? getCachedPrices,
  }) {
    return cachePrice?.call(price);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? deletePrice,
    TResult Function(Price price)? cachePrice,
    TResult Function(Price price)? updatePrice,
    TResult Function()? getCachedPrices,
    required TResult orElse(),
  }) {
    if (cachePrice != null) {
      return cachePrice(price);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeletePrice value) deletePrice,
    required TResult Function(_CachePrice value) cachePrice,
    required TResult Function(_UpdatePrice value) updatePrice,
    required TResult Function(_GetCachedPrices value) getCachedPrices,
  }) {
    return cachePrice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeletePrice value)? deletePrice,
    TResult? Function(_CachePrice value)? cachePrice,
    TResult? Function(_UpdatePrice value)? updatePrice,
    TResult? Function(_GetCachedPrices value)? getCachedPrices,
  }) {
    return cachePrice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeletePrice value)? deletePrice,
    TResult Function(_CachePrice value)? cachePrice,
    TResult Function(_UpdatePrice value)? updatePrice,
    TResult Function(_GetCachedPrices value)? getCachedPrices,
    required TResult orElse(),
  }) {
    if (cachePrice != null) {
      return cachePrice(this);
    }
    return orElse();
  }
}

abstract class _CachePrice implements GasPriceEvent {
  factory _CachePrice(final Price price) = _$_CachePrice;

  Price get price;
  @JsonKey(ignore: true)
  _$$_CachePriceCopyWith<_$_CachePrice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdatePriceCopyWith<$Res> {
  factory _$$_UpdatePriceCopyWith(
          _$_UpdatePrice value, $Res Function(_$_UpdatePrice) then) =
      __$$_UpdatePriceCopyWithImpl<$Res>;
  @useResult
  $Res call({Price price});

  $PriceCopyWith<$Res> get price;
}

/// @nodoc
class __$$_UpdatePriceCopyWithImpl<$Res>
    extends _$GasPriceEventCopyWithImpl<$Res, _$_UpdatePrice>
    implements _$$_UpdatePriceCopyWith<$Res> {
  __$$_UpdatePriceCopyWithImpl(
      _$_UpdatePrice _value, $Res Function(_$_UpdatePrice) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
  }) {
    return _then(_$_UpdatePrice(
      null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PriceCopyWith<$Res> get price {
    return $PriceCopyWith<$Res>(_value.price, (value) {
      return _then(_value.copyWith(price: value));
    });
  }
}

/// @nodoc

class _$_UpdatePrice implements _UpdatePrice {
  _$_UpdatePrice(this.price);

  @override
  final Price price;

  @override
  String toString() {
    return 'GasPriceEvent.updatePrice(price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdatePrice &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(runtimeType, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdatePriceCopyWith<_$_UpdatePrice> get copyWith =>
      __$$_UpdatePriceCopyWithImpl<_$_UpdatePrice>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) deletePrice,
    required TResult Function(Price price) cachePrice,
    required TResult Function(Price price) updatePrice,
    required TResult Function() getCachedPrices,
  }) {
    return updatePrice(price);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? deletePrice,
    TResult? Function(Price price)? cachePrice,
    TResult? Function(Price price)? updatePrice,
    TResult? Function()? getCachedPrices,
  }) {
    return updatePrice?.call(price);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? deletePrice,
    TResult Function(Price price)? cachePrice,
    TResult Function(Price price)? updatePrice,
    TResult Function()? getCachedPrices,
    required TResult orElse(),
  }) {
    if (updatePrice != null) {
      return updatePrice(price);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeletePrice value) deletePrice,
    required TResult Function(_CachePrice value) cachePrice,
    required TResult Function(_UpdatePrice value) updatePrice,
    required TResult Function(_GetCachedPrices value) getCachedPrices,
  }) {
    return updatePrice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeletePrice value)? deletePrice,
    TResult? Function(_CachePrice value)? cachePrice,
    TResult? Function(_UpdatePrice value)? updatePrice,
    TResult? Function(_GetCachedPrices value)? getCachedPrices,
  }) {
    return updatePrice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeletePrice value)? deletePrice,
    TResult Function(_CachePrice value)? cachePrice,
    TResult Function(_UpdatePrice value)? updatePrice,
    TResult Function(_GetCachedPrices value)? getCachedPrices,
    required TResult orElse(),
  }) {
    if (updatePrice != null) {
      return updatePrice(this);
    }
    return orElse();
  }
}

abstract class _UpdatePrice implements GasPriceEvent {
  factory _UpdatePrice(final Price price) = _$_UpdatePrice;

  Price get price;
  @JsonKey(ignore: true)
  _$$_UpdatePriceCopyWith<_$_UpdatePrice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetCachedPricesCopyWith<$Res> {
  factory _$$_GetCachedPricesCopyWith(
          _$_GetCachedPrices value, $Res Function(_$_GetCachedPrices) then) =
      __$$_GetCachedPricesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetCachedPricesCopyWithImpl<$Res>
    extends _$GasPriceEventCopyWithImpl<$Res, _$_GetCachedPrices>
    implements _$$_GetCachedPricesCopyWith<$Res> {
  __$$_GetCachedPricesCopyWithImpl(
      _$_GetCachedPrices _value, $Res Function(_$_GetCachedPrices) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetCachedPrices implements _GetCachedPrices {
  _$_GetCachedPrices();

  @override
  String toString() {
    return 'GasPriceEvent.getCachedPrices()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetCachedPrices);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) deletePrice,
    required TResult Function(Price price) cachePrice,
    required TResult Function(Price price) updatePrice,
    required TResult Function() getCachedPrices,
  }) {
    return getCachedPrices();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? deletePrice,
    TResult? Function(Price price)? cachePrice,
    TResult? Function(Price price)? updatePrice,
    TResult? Function()? getCachedPrices,
  }) {
    return getCachedPrices?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? deletePrice,
    TResult Function(Price price)? cachePrice,
    TResult Function(Price price)? updatePrice,
    TResult Function()? getCachedPrices,
    required TResult orElse(),
  }) {
    if (getCachedPrices != null) {
      return getCachedPrices();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeletePrice value) deletePrice,
    required TResult Function(_CachePrice value) cachePrice,
    required TResult Function(_UpdatePrice value) updatePrice,
    required TResult Function(_GetCachedPrices value) getCachedPrices,
  }) {
    return getCachedPrices(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeletePrice value)? deletePrice,
    TResult? Function(_CachePrice value)? cachePrice,
    TResult? Function(_UpdatePrice value)? updatePrice,
    TResult? Function(_GetCachedPrices value)? getCachedPrices,
  }) {
    return getCachedPrices?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeletePrice value)? deletePrice,
    TResult Function(_CachePrice value)? cachePrice,
    TResult Function(_UpdatePrice value)? updatePrice,
    TResult Function(_GetCachedPrices value)? getCachedPrices,
    required TResult orElse(),
  }) {
    if (getCachedPrices != null) {
      return getCachedPrices(this);
    }
    return orElse();
  }
}

abstract class _GetCachedPrices implements GasPriceEvent {
  factory _GetCachedPrices() = _$_GetCachedPrices;
}
