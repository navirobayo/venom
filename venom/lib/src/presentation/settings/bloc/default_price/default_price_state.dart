part of 'default_price_bloc.dart';

@freezed
class DefaultPriceState with _$DefaultPriceState {
  const factory DefaultPriceState.idle({Price? price}) = _Idle;
}
