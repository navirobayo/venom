import 'package:dartz/dartz.dart';
import 'package:venom/src/features/core/models/tuple.dart' as tuple;
import 'package:venom/src/features/core/models/use_case.dart';
import 'package:venom/src/features/ride/domain/failures/ride_failure.dart';
import 'package:venom/src/features/ride/domain/models/ride_model.dart';
import 'package:venom/src/features/ride/domain/repositories/ride_repository.dart';

class CacheRideDataUseCase
    implements UseCase<RideFailure, void, tuple.Tuple1<List<Ride>>> {
  const CacheRideDataUseCase(this.repo);

  final RideRepository repo;

  @override
  Future<Either<RideFailure, void>> call({tuple.Tuple1<List<Ride>>? param}) =>
      (param == null)
          ? Future.value(left(const RideFailure.nullParam()))
          : repo.cacheRidesData(rides: param.value1);
}
