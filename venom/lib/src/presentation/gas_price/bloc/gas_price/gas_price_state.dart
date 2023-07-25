part of 'gas_price_bloc.dart';

@freezed
class GasPriceState with _$GasPriceState {
  const factory GasPriceState.idle(List<Price> prices) = _Idle;
  const factory GasPriceState.failure(String message, PriceFailure failure) =
      _Failure;

  const factory GasPriceState.loading() = _Loading;
}
