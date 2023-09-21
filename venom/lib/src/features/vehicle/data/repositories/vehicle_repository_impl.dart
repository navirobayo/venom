import 'package:dartz/dartz.dart';
import 'package:venom/src/features/vehicle/data/data_sources/local/vehicle_local_data_source.dart';
import 'package:venom/src/features/vehicle/domain/failures/vehicle_failure.dart';
import 'package:venom/src/features/vehicle/domain/models/vehicle_list.dart';
import 'package:venom/src/features/vehicle/domain/models/vehicle_model.dart';
import 'package:venom/src/features/vehicle/domain/repositories/vehicle_repository.dart';

class VehicleRepositoryImpl extends VehicleRepository {

  VehicleRepositoryImpl(this._localDS);
  final VehicleLocalDataSource _localDS;
  final String tokenFieldKey = 'token';

  @override
  Future<Either<VehicleFailure, void>> cacheVehiclesData(
      {required List<Vehicle> vehicles,}) {
    final vehicleList = VehicleList(vehicles: vehicles);
    return _localDS
        .cacheData(fieldKey: 'vehicles', value: vehicleList)
        .then((value) => value.fold(
              (l) => left(VehicleFailure.database(l)),
              right,
            ),);
  }

  @override
  Future<Either<VehicleFailure, List<Vehicle>>> getCachedVehiclesData() =>
      _localDS.getCachedData(fieldKey: 'vehicles').then((value) => value.fold(
            (l) => left(VehicleFailure.database(l)),
            (r) {
              if (r == null) {
                return left(const VehicleFailure.nullParam());
              }
              return right(r.vehicles.toList());
            },
          ),);
}
