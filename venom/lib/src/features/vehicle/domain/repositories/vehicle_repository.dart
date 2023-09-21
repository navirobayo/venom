import 'package:dartz/dartz.dart';
import 'package:venom/src/features/vehicle/domain/failures/vehicle_failure.dart';
import 'package:venom/src/features/vehicle/domain/models/vehicle_model.dart';

abstract class VehicleRepository {
  //
  Future<Either<VehicleFailure, List<Vehicle>>> getCachedVehiclesData();
  //
  Future<Either<VehicleFailure, void>> cacheVehiclesData(
      {required List<Vehicle> vehicles,});
}
