import 'package:dartz/dartz.dart';
import 'package:venom/src/features/core/models/tuple.dart' as tuple;
import 'package:venom/src/features/core/models/use_case.dart';
import 'package:venom/src/features/vehicle/domain/failures/vehicle_failure.dart';
import 'package:venom/src/features/vehicle/domain/models/vehicle_model.dart';
import 'package:venom/src/features/vehicle/domain/repositories/vehicle_repository.dart';

class GetCachedVehicleDataUseCase
    implements UseCase<VehicleFailure, List<Vehicle>, tuple.Tuple0> {
  const GetCachedVehicleDataUseCase(this.repo);

  final VehicleRepository repo;

  @override
  Future<Either<VehicleFailure, List<Vehicle>>> call({tuple.Tuple0? param}) =>
      repo.getCachedVehiclesData();
}
