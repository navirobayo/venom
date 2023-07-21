import 'package:dartz/dartz.dart';
import 'package:venom/src/features/price/domain/failures/price_failure.dart';
import 'package:venom/src/features/price/domain/models/price_model.dart';

abstract class PriceRepository {
  //
  Future<Either<PriceFailure, List<Price>>> getCachedPricesData();
  //
  Future<Either<PriceFailure, void>> cachePricesData(
      {required List<Price> prices});
}
