part of 'default_price_bloc.dart';

@freezed
class DefaultPriceEvent with _$DefaultPriceEvent {
  factory DefaultPriceEvent.setDefaultPrice(Price? price) = _SetDefaultPrice;
  factory DefaultPriceEvent.readDefaultPrice() = _ReadDefaultPrice;
}
