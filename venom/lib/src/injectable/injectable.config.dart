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
import 'package:venom/src/core/interceptors/request_interceptor.dart' as _i20;
import 'package:venom/src/features/home/data/data_sources/local/home_local_data_source.dart'
    as _i12;
import 'package:venom/src/features/home/data/data_sources/remote/home_remote_data_source.dart'
    as _i13;
import 'package:venom/src/features/home/domain/repositories/home_repository.dart'
    as _i14;
import 'package:venom/src/features/price/data/data_sources/local/price_local_data_source.dart'
    as _i18;
import 'package:venom/src/features/price/domain/repositories/price_repository.dart'
    as _i19;
import 'package:venom/src/features/price/domain/use_cases/cache_prices_data_use_case.dart'
    as _i4;
import 'package:venom/src/features/price/domain/use_cases/get_cached_prices_data_use_case.dart'
    as _i8;
import 'package:venom/src/features/ride/data/data_sources/local/ride_local_data_source.dart'
    as _i21;
import 'package:venom/src/features/ride/domain/repositories/ride_repository.dart'
    as _i22;
import 'package:venom/src/features/ride/domain/use_cases/cache_rides_data_use_case.dart'
    as _i5;
import 'package:venom/src/features/ride/domain/use_cases/get_cached_rides_use_case.dart'
    as _i9;
import 'package:venom/src/features/vehicle/data/data_sources/local/vehicle_local_data_source.dart'
    as _i25;
import 'package:venom/src/features/vehicle/domain/repositories/vehicle_repository.dart'
    as _i26;
import 'package:venom/src/features/vehicle/domain/use_cases/cache_vehicles_data_use_case.dart'
    as _i6;
import 'package:venom/src/features/vehicle/domain/use_cases/get_cached_vehicles_data_use_case.dart'
    as _i10;
import 'package:venom/src/injectable/module_injection/features/home_feature_module.dart'
    as _i28;
import 'package:venom/src/injectable/module_injection/features/price_feature_module.dart'
    as _i29;
import 'package:venom/src/injectable/module_injection/features/ride_feature_module.dart'
    as _i30;
import 'package:venom/src/injectable/module_injection/features/vehicle_feature_module.dart'
    as _i31;
import 'package:venom/src/presentation/gas_price/bloc/gas_price/gas_price_bloc.dart'
    as _i27;
import 'package:venom/src/presentation/home/bloc/home_bloc.dart' as _i11;
import 'package:venom/src/presentation/ride/bloc/before_ride/before_ride_bloc.dart'
    as _i3;
import 'package:venom/src/presentation/ride/bloc/final_data/final_data_bloc.dart'
    as _i7;
import 'package:venom/src/presentation/ride/bloc/km_in_bike/km_in_bike_bloc.dart'
    as _i15;
import 'package:venom/src/presentation/ride/bloc/new_ride/new_ride_bloc.dart'
    as _i17;
import 'package:venom/src/presentation/ride/bloc/ride_result/ride_result_bloc.dart'
    as _i23;
import 'package:venom/src/presentation/ride/bloc/rides/rides_bloc.dart' as _i24;
import 'package:venom/src/presentation/vehicle/bloc/my_vehicle/my_vehicle_bloc.dart'
    as _i16;

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
    final priceFeatureModule = _$PriceFeatureModule();
    final rideFeatureModule = _$RideFeatureModule();
    final vehicleFeatureModule = _$VehicleFeatureModule();
    final homeFeatureModule = _$HomeFeatureModule();
    gh.lazySingleton<_i3.BeforeRideBloc>(() => _i3.BeforeRideBloc());
    gh.factory<_i4.CachePriceDataUseCase>(
        () => priceFeatureModule.cachePricesUseCase);
    gh.factory<_i5.CacheRideDataUseCase>(
        () => rideFeatureModule.cacheRidesUseCase);
    gh.factory<_i6.CacheVehicleDataUseCase>(
        () => vehicleFeatureModule.cacheVehiclesUseCase);
    gh.lazySingleton<_i7.FinalDataBloc>(() => _i7.FinalDataBloc());
    gh.factory<_i8.GetCachedPriceDataUseCase>(
        () => priceFeatureModule.getPricesUseCase);
    gh.factory<_i9.GetCachedRideDataUseCase>(
        () => rideFeatureModule.getRidesUseCase);
    gh.factory<_i10.GetCachedVehicleDataUseCase>(
        () => vehicleFeatureModule.getVehiclesUseCase);
    gh.lazySingleton<_i11.HomeBloc>(() => _i11.HomeBloc());
    gh.factory<_i12.HomeLocalDataSource>(() => homeFeatureModule.localDS);
    gh.factory<_i13.HomeRemoteDataSource>(() => homeFeatureModule.remoteDS);
    gh.factory<_i14.HomeRepository>(() => homeFeatureModule.repo);
    gh.lazySingleton<_i15.KmInBikeBloc>(() => _i15.KmInBikeBloc());
    gh.lazySingleton<_i16.MyVehicleBloc>(() => _i16.MyVehicleBloc(
          gh<_i10.GetCachedVehicleDataUseCase>(),
          gh<_i6.CacheVehicleDataUseCase>(),
        ));
    gh.lazySingleton<_i17.NewRideBloc>(() => _i17.NewRideBloc());
    gh.factory<_i18.PriceLocalDataSource>(() => priceFeatureModule.localDS);
    gh.factory<_i19.PriceRepository>(() => priceFeatureModule.repo);
    gh.factory<_i20.RequestInterceptor>(() => _i20.RequestInterceptor());
    gh.factory<_i21.RideLocalDataSource>(() => rideFeatureModule.localDS);
    gh.factory<_i22.RideRepository>(() => rideFeatureModule.repo);
    gh.lazySingleton<_i23.RideResultBloc>(() => _i23.RideResultBloc(
          gh<_i5.CacheRideDataUseCase>(),
          gh<_i9.GetCachedRideDataUseCase>(),
        ));
    gh.lazySingleton<_i24.RidesBloc>(() => _i24.RidesBloc(
          gh<_i9.GetCachedRideDataUseCase>(),
          gh<_i5.CacheRideDataUseCase>(),
        ));
    gh.factory<_i25.VehicleLocalDataSource>(() => vehicleFeatureModule.localDS);
    gh.factory<_i26.VehicleRepository>(() => vehicleFeatureModule.repo);
    gh.lazySingleton<_i27.GasPriceBloc>(() => _i27.GasPriceBloc(
          gh<_i8.GetCachedPriceDataUseCase>(),
          gh<_i4.CachePriceDataUseCase>(),
        ));
    return this;
  }
}

class _$HomeFeatureModule extends _i28.HomeFeatureModule {}

class _$PriceFeatureModule extends _i29.PriceFeatureModule {}

class _$RideFeatureModule extends _i30.RideFeatureModule {}

class _$VehicleFeatureModule extends _i31.VehicleFeatureModule {}
