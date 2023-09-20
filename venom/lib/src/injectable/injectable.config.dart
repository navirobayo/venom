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
import 'package:venom/src/core/interceptors/request_interceptor.dart' as _i21;
import 'package:venom/src/features/price/data/data_sources/local/price_local_data_source.dart'
    as _i19;
import 'package:venom/src/features/price/domain/repositories/price_repository.dart'
    as _i20;
import 'package:venom/src/features/price/domain/use_cases/cache_prices_data_use_case.dart'
    as _i4;
import 'package:venom/src/features/price/domain/use_cases/get_cached_prices_data_use_case.dart'
    as _i11;
import 'package:venom/src/features/ride/data/data_sources/local/ride_local_data_source.dart'
    as _i22;
import 'package:venom/src/features/ride/domain/repositories/ride_repository.dart'
    as _i23;
import 'package:venom/src/features/ride/domain/use_cases/cache_rides_data_use_case.dart'
    as _i5;
import 'package:venom/src/features/ride/domain/use_cases/get_cached_rides_use_case.dart'
    as _i12;
import 'package:venom/src/features/theme/data/data_sources/local/theme_local_data_source.dart'
    as _i27;
import 'package:venom/src/features/theme/domain/repositories/theme_repository.dart'
    as _i28;
import 'package:venom/src/features/theme/domain/use_cases/change_theme_use_case.dart'
    as _i7;
import 'package:venom/src/features/theme/domain/use_cases/get_theme_use_case.dart'
    as _i14;
import 'package:venom/src/features/vehicle/data/data_sources/local/vehicle_local_data_source.dart'
    as _i29;
import 'package:venom/src/features/vehicle/domain/repositories/vehicle_repository.dart'
    as _i30;
import 'package:venom/src/features/vehicle/domain/use_cases/cache_vehicles_data_use_case.dart'
    as _i6;
import 'package:venom/src/features/vehicle/domain/use_cases/get_cached_vehicles_data_use_case.dart'
    as _i13;
import 'package:venom/src/injectable/module_injection/features/price_feature_module.dart'
    as _i32;
import 'package:venom/src/injectable/module_injection/features/ride_feature_module.dart'
    as _i33;
import 'package:venom/src/injectable/module_injection/features/theme_feature_module.dart'
    as _i35;
import 'package:venom/src/injectable/module_injection/features/vehicle_feature_module.dart'
    as _i34;
import 'package:venom/src/presentation/gas_price/bloc/gas_price/gas_price_bloc.dart'
    as _i31;
import 'package:venom/src/presentation/home/bloc/home_bloc.dart' as _i15;
import 'package:venom/src/presentation/ride/bloc/before_ride/before_ride_bloc.dart'
    as _i3;
import 'package:venom/src/presentation/ride/bloc/final_data/final_data_bloc.dart'
    as _i10;
import 'package:venom/src/presentation/ride/bloc/km_in_bike/km_in_bike_bloc.dart'
    as _i16;
import 'package:venom/src/presentation/ride/bloc/new_ride/new_ride_bloc.dart'
    as _i18;
import 'package:venom/src/presentation/ride/bloc/ride_result/ride_result_bloc.dart'
    as _i24;
import 'package:venom/src/presentation/ride/bloc/rides/rides_bloc.dart' as _i25;
import 'package:venom/src/presentation/settings/bloc/default_price/default_price_bloc.dart'
    as _i8;
import 'package:venom/src/presentation/settings/bloc/default_vehicle/default_vehicle_bloc.dart'
    as _i9;
import 'package:venom/src/presentation/settings/bloc/set_theme/set_theme_bloc.dart'
    as _i26;
import 'package:venom/src/presentation/vehicle/bloc/my_vehicle/my_vehicle_bloc.dart'
    as _i17;

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
    final themeFeatureModule = _$ThemeFeatureModule();
    gh.lazySingleton<_i3.BeforeRideBloc>(() => _i3.BeforeRideBloc());
    gh.factory<_i4.CachePriceDataUseCase>(
        () => priceFeatureModule.cachePricesUseCase);
    gh.factory<_i5.CacheRideDataUseCase>(
        () => rideFeatureModule.cacheRidesUseCase);
    gh.factory<_i6.CacheVehicleDataUseCase>(
        () => vehicleFeatureModule.cacheVehiclesUseCase);
    gh.factory<_i7.ChangeThemeUseCase>(
        () => themeFeatureModule.cacheThemeUseCase);
    gh.lazySingleton<_i8.DefaultPriceBloc>(() => _i8.DefaultPriceBloc());
    gh.lazySingleton<_i9.DefaultVehicleBloc>(() => _i9.DefaultVehicleBloc());
    gh.lazySingleton<_i10.FinalDataBloc>(() => _i10.FinalDataBloc());
    gh.factory<_i11.GetCachedPriceDataUseCase>(
        () => priceFeatureModule.getPricesUseCase);
    gh.factory<_i12.GetCachedRideDataUseCase>(
        () => rideFeatureModule.getRidesUseCase);
    gh.factory<_i13.GetCachedVehicleDataUseCase>(
        () => vehicleFeatureModule.getVehiclesUseCase);
    gh.factory<_i14.GetThemeUseCase>(() => themeFeatureModule.getThemeUseCase);
    gh.lazySingleton<_i15.HomeBloc>(() => _i15.HomeBloc());
    gh.lazySingleton<_i16.KmInBikeBloc>(() => _i16.KmInBikeBloc());
    gh.lazySingleton<_i17.MyVehicleBloc>(() => _i17.MyVehicleBloc(
          gh<_i13.GetCachedVehicleDataUseCase>(),
          gh<_i6.CacheVehicleDataUseCase>(),
        ));
    gh.lazySingleton<_i18.NewRideBloc>(() => _i18.NewRideBloc());
    gh.factory<_i19.PriceLocalDataSource>(() => priceFeatureModule.localDS);
    gh.factory<_i20.PriceRepository>(() => priceFeatureModule.repo);
    gh.factory<_i21.RequestInterceptor>(() => _i21.RequestInterceptor());
    gh.factory<_i22.RideLocalDataSource>(() => rideFeatureModule.localDS);
    gh.factory<_i23.RideRepository>(() => rideFeatureModule.repo);
    gh.lazySingleton<_i24.RideResultBloc>(() => _i24.RideResultBloc(
          gh<_i5.CacheRideDataUseCase>(),
          gh<_i12.GetCachedRideDataUseCase>(),
        ));
    gh.lazySingleton<_i25.RidesBloc>(() => _i25.RidesBloc(
          gh<_i12.GetCachedRideDataUseCase>(),
          gh<_i5.CacheRideDataUseCase>(),
        ));
    gh.lazySingleton<_i26.SetThemeBloc>(() => _i26.SetThemeBloc(
          gh<_i14.GetThemeUseCase>(),
          gh<_i7.ChangeThemeUseCase>(),
        ));
    gh.factory<_i27.ThemeLocalDataSource>(() => themeFeatureModule.localDS);
    gh.factory<_i28.ThemeRepository>(() => themeFeatureModule.repo);
    gh.factory<_i29.VehicleLocalDataSource>(() => vehicleFeatureModule.localDS);
    gh.factory<_i30.VehicleRepository>(() => vehicleFeatureModule.repo);
    gh.lazySingleton<_i31.GasPriceBloc>(() => _i31.GasPriceBloc(
          gh<_i11.GetCachedPriceDataUseCase>(),
          gh<_i4.CachePriceDataUseCase>(),
        ));
    return this;
  }
}

class _$PriceFeatureModule extends _i32.PriceFeatureModule {}

class _$RideFeatureModule extends _i33.RideFeatureModule {}

class _$VehicleFeatureModule extends _i34.VehicleFeatureModule {}

class _$ThemeFeatureModule extends _i35.ThemeFeatureModule {}
