import 'package:dartz/dartz.dart';
import 'package:venom/src/features/core/models/tuple.dart' as tuple;
import 'package:venom/src/features/core/models/use_case.dart';
import 'package:venom/src/features/price/domain/failures/price_failure.dart';
import 'package:venom/src/features/price/domain/models/price_model.dart';
import 'package:venom/src/features/price/domain/repositories/price_repository.dart';

class GetCachedPriceDataUseCase
    implements UseCase<PriceFailure, List<Price>, tuple.Tuple0> {
  const GetCachedPriceDataUseCase(this.repo);

  final PriceRepository repo;

  @override
  Future<Either<PriceFailure, List<Price>>> call({tuple.Tuple0? param}) =>
      repo.getCachedPricesData();
}
