import 'package:dartz/dartz.dart';
import 'package:venom/src/features/core/models/tuple.dart' as tuple;
import 'package:venom/src/features/core/models/use_case.dart';
import 'package:venom/src/features/ride/domain/failures/ride_failure.dart';
import 'package:venom/src/features/ride/domain/models/ride_model.dart';
import 'package:venom/src/features/ride/domain/repositories/ride_repository.dart';

class GetCachedRideDataUseCase
    implements UseCase<RideFailure, List<Ride>, tuple.Tuple0> {
  const GetCachedRideDataUseCase(this.repo);

  final RideRepository repo;

  @override
  Future<Either<RideFailure, List<Ride>>> call({tuple.Tuple0? param}) =>
      repo.getCachedRidesData();
}
