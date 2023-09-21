import 'package:database_service/database_service.dart';
import 'package:injectable/injectable.dart';
import 'package:venom/src/features/ride/data/data_sources/local/ride_local_data_source.dart';
import 'package:venom/src/features/ride/data/repositories/ride_repository_impl.dart';
import 'package:venom/src/features/ride/domain/repositories/ride_repository.dart';
import 'package:venom/src/features/ride/domain/use_cases/cache_rides_data_use_case.dart';
import 'package:venom/src/features/ride/domain/use_cases/get_cached_rides_use_case.dart';
import 'package:venom/src/injectable/injectable.dart';

@module
abstract class RideFeatureModule {
  RideLocalDataSource get localDS => RideLocalDataSource(
        getIt.get<DatabaseService>(),
      );

  RideRepository get repo => RideRepositoryImpl(localDS);
  GetCachedRideDataUseCase get getRidesUseCase =>
      GetCachedRideDataUseCase(repo);
  CacheRideDataUseCase get cacheRidesUseCase => CacheRideDataUseCase(repo);
}
