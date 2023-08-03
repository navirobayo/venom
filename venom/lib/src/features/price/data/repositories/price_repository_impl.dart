import 'package:dartz/dartz.dart';
import 'package:venom/src/features/price/data/data_sources/local/price_local_data_source.dart';
import 'package:venom/src/features/price/domain/failures/price_failure.dart';
import 'package:venom/src/features/price/domain/models/price_list.dart';
import 'package:venom/src/features/price/domain/models/price_model.dart';
import 'package:venom/src/features/price/domain/repositories/price_repository.dart';

class PriceRepositoryImpl extends PriceRepository {
  final PriceLocalDataSource _priceslocalDS;
  final String tokenFieldKey = 'token';

  PriceRepositoryImpl(this._priceslocalDS);

  @override
  Future<Either<PriceFailure, void>> cachePricesData(
      {required List<Price> prices}) {
    PriceList pricesList = PriceList(prices: prices);
    return _priceslocalDS
        .cacheData(fieldKey: 'prices', value: pricesList)
        .then((value) => value.fold(
              (l) => left(PriceFailure.database(l)),
              (r) {
                return right(r);
              },
            ));
  }

  @override
  Future<Either<PriceFailure, List<Price>>> getCachedPricesData() =>
      _priceslocalDS
          .getCachedData(fieldKey: 'prices')
          .then((value) => value.fold(
                (l) => left(PriceFailure.database(l)),
                (r) {
                  if (r == null) {
                    return left(PriceFailure.nullParam());
                  }
                  return right(r.prices.toList());
                },
              ));
}
