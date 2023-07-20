// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:venom/src/core/interceptors/request_interceptor.dart' as _i9;
import 'package:venom/src/features/home/data/data_sources/local/home_local_data_source.dart'
    as _i6;
import 'package:venom/src/features/home/data/data_sources/remote/home_remote_data_source.dart'
    as _i7;
import 'package:venom/src/features/home/domain/repositories/home_repository.dart'
    as _i8;
import 'package:venom/src/features/ride/data/data_sources/local/ride_local_data_source.dart'
    as _i10;
import 'package:venom/src/features/ride/domain/repositories/ride_repository.dart'
    as _i11;
import 'package:venom/src/features/ride/domain/use_cases/cache_rides_data_use_case.dart'
    as _i3;
import 'package:venom/src/features/ride/domain/use_cases/get_cached_rides_use_case.dart'
    as _i4;
import 'package:venom/src/injectable/module_injection/features/home_feature_module.dart'
    as _i13;
import 'package:venom/src/injectable/module_injection/features/ride_feature_module.dart'
    as _i14;
import 'package:venom/src/peresentation/home/bloc/home_bloc.dart' as _i5;
import 'package:venom/src/peresentation/ride/pages/bloc/rides/rides_bloc.dart'
    as _i12;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final rideFeatureModule = _$RideFeatureModule();
    final homeFeatureModule = _$HomeFeatureModule();
    gh.factory<_i3.CacheRideDataUseCase>(
        () => rideFeatureModule.cacheRidesUseCase);
    gh.factory<_i4.GetCachedRideDataUseCase>(
        () => rideFeatureModule.getRidesUseCase);
    gh.lazySingleton<_i5.HomeBloc>(() => _i5.HomeBloc());
    gh.factory<_i6.HomeLocalDataSource>(() => homeFeatureModule.localDS);
    gh.factory<_i7.HomeRemoteDataSource>(() => homeFeatureModule.remoteDS);
    gh.factory<_i8.HomeRepository>(() => homeFeatureModule.repo);
    gh.factory<_i9.RequestInterceptor>(() => _i9.RequestInterceptor());
    gh.factory<_i10.RideLocalDataSource>(() => rideFeatureModule.localDS);
    gh.factory<_i11.RideRepository>(() => rideFeatureModule.repo);
    gh.lazySingleton<_i12.RidesBloc>(() => _i12.RidesBloc(
          gh<_i4.GetCachedRideDataUseCase>(),
          gh<_i3.CacheRideDataUseCase>(),
        ));
    return this;
  }
}

class _$HomeFeatureModule extends _i13.HomeFeatureModule {}

class _$RideFeatureModule extends _i14.RideFeatureModule {}
