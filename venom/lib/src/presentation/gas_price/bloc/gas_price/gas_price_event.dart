part of 'gas_price_bloc.dart';

@freezed
class GasPriceEvent with _$GasPriceEvent {
  factory GasPriceEvent.deletePrice(int index) = _DeletePrice;
  factory GasPriceEvent.cachePrice(Price price) = _CachePrice;
  factory GasPriceEvent.updatePrice(Price price) = _UpdatePrice;
  factory GasPriceEvent.getCachedPrices() = _GetCachedPrices;
}
