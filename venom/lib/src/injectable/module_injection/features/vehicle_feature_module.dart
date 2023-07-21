import 'package:database_service/database_service.dart';
import 'package:injectable/injectable.dart';
import 'package:venom/src/features/vehicle/data/data_sources/local/vehicle_local_data_source.dart';
import 'package:venom/src/features/vehicle/data/repositories/vehicle_repository_impl.dart';
import 'package:venom/src/features/vehicle/domain/repositories/vehicle_repository.dart';
import 'package:venom/src/features/vehicle/domain/use_cases/cache_vehicles_data_use_case.dart';
import 'package:venom/src/features/vehicle/domain/use_cases/get_cached_vehicles_data_use_case.dart';
import 'package:venom/src/injectable/injectable.dart';

@module
abstract class VehicleFeatureModule {
  VehicleLocalDataSource get localDS => VehicleLocalDataSource(
        getIt.get<DatabaseService>(),
      );

  VehicleRepository get repo => VehicleRepositoryImpl(localDS);
  GetCachedVehicleDataUseCase get getVehiclesUseCase =>
      GetCachedVehicleDataUseCase(repo);
  CacheVehicleDataUseCase get cacheVehiclesUseCase =>
      CacheVehicleDataUseCase(repo);
}
