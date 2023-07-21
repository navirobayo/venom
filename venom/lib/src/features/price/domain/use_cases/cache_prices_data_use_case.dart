import 'package:dartz/dartz.dart';
import 'package:venom/src/features/core/models/tuple.dart' as tuple;
import 'package:venom/src/features/core/models/use_case.dart';
import 'package:venom/src/features/price/domain/failures/price_failure.dart';
import 'package:venom/src/features/price/domain/models/price_model.dart';
import 'package:venom/src/features/price/domain/repositories/price_repository.dart';

class CachePriceDataUseCase
    implements UseCase<PriceFailure, void, tuple.Tuple1<List<Price>>> {
  const CachePriceDataUseCase(this.repo);

  final PriceRepository repo;

  @override
  Future<Either<PriceFailure, void>> call({tuple.Tuple1<List<Price>>? param}) =>
      (param == null)
          ? Future.value(left(const PriceFailure.nullParam()))
          : repo.cachePricesData(prices: param.value1);
}
