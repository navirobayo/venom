import 'package:dartz/dartz.dart';
import 'package:venom/src/features/core/models/tuple.dart' as tuple;
import 'package:venom/src/features/core/models/use_case.dart';
import 'package:venom/src/features/vehicle/domain/failures/vehicle_failure.dart';
import 'package:venom/src/features/vehicle/domain/models/vehicle_model.dart';
import 'package:venom/src/features/vehicle/domain/repositories/vehicle_repository.dart';

class CacheVehicleDataUseCase
    implements UseCase<VehicleFailure, void, tuple.Tuple1<List<Vehicle>>> {
  const CacheVehicleDataUseCase(this.repo);

  final VehicleRepository repo;

  @override
  Future<Either<VehicleFailure, void>> call(
          {tuple.Tuple1<List<Vehicle>>? param}) =>
      (param == null)
          ? Future.value(left(const VehicleFailure.nullParam()))
          : repo.cacheVehiclesData(vehicles: param.value1);
}
