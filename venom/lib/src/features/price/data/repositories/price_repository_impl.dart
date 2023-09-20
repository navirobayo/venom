import 'package:dartz/dartz.dart';
import 'package:venom/src/features/price/data/data_sources/local/price_local_data_source.dart';
import 'package:venom/src/features/price/domain/failures/price_failure.dart';
import 'package:venom/src/features/price/domain/models/price_list.dart';
import 'package:venom/src/features/price/domain/models/price_model.dart';
import 'package:venom/src/features/price/domain/repositories/price_repository.dart';

class PriceRepositoryImpl extends PriceRepository {

  PriceRepositoryImpl(this._priceslocalDS);
  final PriceLocalDataSource _priceslocalDS;
  final String tokenFieldKey = 'token';

  @override
  Future<Either<PriceFailure, void>> cachePricesData(
      {required List<Price> prices,}) {
    final pricesList = PriceList(prices: prices);
    return _priceslocalDS
        .cacheData(fieldKey: 'prices', value: pricesList)
        .then((value) => value.fold(
              (l) => left(PriceFailure.database(l)),
              right,
            ),);
  }

  @override
  Future<Either<PriceFailure, List<Price>>> getCachedPricesData() =>
      _priceslocalDS
          .getCachedData(fieldKey: 'prices')
          .then((value) => value.fold(
                (l) => left(PriceFailure.database(l)),
                (r) {
                  if (r == null) {
                    return left(const PriceFailure.nullParam());
                  }
                  return right(r.prices.toList());
                },
              ),);
}
