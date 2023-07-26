import 'dart:async';
import 'package:flutter/material.dart';
import 'package:venom/src/config/routes/router.dart';
import 'package:venom/src/features/core/models/tuple.dart' as tuple;

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:venom/src/features/price/domain/models/price_model.dart';
import 'package:venom/src/features/ride/domain/failures/ride_failure.dart';
import 'package:venom/src/features/ride/domain/models/ride_model.dart';
import 'package:venom/src/features/ride/domain/use_cases/cache_rides_data_use_case.dart';
import 'package:venom/src/features/ride/domain/use_cases/get_cached_rides_use_case.dart';
import 'package:venom/src/features/vehicle/domain/models/vehicle_model.dart';
import 'package:venom/src/injectable/injectable.dart';
import 'package:venom/src/presentation/ride/bloc/before_ride/before_ride_bloc.dart';
import 'package:venom/src/presentation/ride/bloc/final_data/final_data_bloc.dart';
import 'package:venom/src/presentation/ride/bloc/km_in_bike/km_in_bike_bloc.dart';
import 'package:venom/src/presentation/ride/bloc/new_ride/new_ride_bloc.dart';
import 'package:venom/src/presentation/ride/bloc/rides/rides_bloc.dart';

part 'ride_result_state.dart';
part 'ride_result_event.dart';
part 'ride_result_bloc.freezed.dart';

@lazySingleton
class RideResultBloc extends Bloc<RideResultEvent, RideResultState> {
  final CacheRideDataUseCase _cacheRideDataUseCase;
  final GetCachedRideDataUseCase _getCachedRideDataUseCase;
  RideResultBloc(this._cacheRideDataUseCase, this._getCachedRideDataUseCase)
      : super(RideResultState.idle(Ride())) {
    on<_AnalyzeRide>(_onAnalyzeRide);
    on<_SaveAndClose>(_onSaveAndClose);
    on<_GetRides>(_onGetRides);
    add(_GetRides());
  }
  List<Ride> rides = [];

  FutureOr<void> _onAnalyzeRide(
      _AnalyzeRide event, Emitter<RideResultState> emit) {
    //
    double distanceTravelled = getIt.get<double>(instanceName: 'odometer2') -
        getIt.get<double>(instanceName: 'odometer');
    //

    double gasUsed = (getIt.get<double>(instanceName: 'gasLevel') -
            getIt.get<double>(instanceName: 'gasLevel2')) *
        (double.tryParse(getIt.get<Vehicle>().tankCapacity) ?? 0);
    //
    double gasPrice = gasUsed * (getIt.get<Price>().price);
    //
    double averageSpeed = (distanceTravelled / getIt.get<int>()) * 3600;
    //
    Ride ride = Ride(
      id: rides.length + 1,
      averageSpeed: averageSpeed.toStringAsFixed(2),
      distanceTravelled: distanceTravelled.toStringAsFixed(2),
      gasPrice: gasPrice.toStringAsFixed(2),
      gasUsed: gasUsed.toStringAsFixed(2),
      timeTraveled: getIt.get<String>(instanceName: 'timeTraveled'),
    );
    emit(RideResultState.idle(ride));
  }

  FutureOr<void> _onSaveAndClose(
      _SaveAndClose event, Emitter<RideResultState> emit) async {
    if (event.ride != null) {
      rides.add(event.ride!);
    }
    await _cacheRideDataUseCase
        .call(param: tuple.Tuple1(rides))
        .then((value) => value.fold(
              (l) => ScaffoldMessenger.of(
                      getIt.get<AppRouter>().navigatorKey.currentContext!)
                  .showSnackBar(
                SnackBar(
                  content: Text('Try again'),
                ),
              ),
              (r) {
                if (event.ride != null) {
                  getIt.resetLazySingleton<NewRideBloc>();
                  getIt.resetLazySingleton<KmInBikeBloc>();
                  getIt.resetLazySingleton<BeforeRideBloc>();
                  getIt.resetLazySingleton<FinalDataBloc>();
                  getIt.resetLazySingleton<RidesBloc>();
                  getIt.resetLazySingleton<RideResultBloc>();
                  return getIt.get<AppRouter>().navigateNamed('/home');
                }
              },
            ));
  }

  FutureOr<void> _onGetRides(
      _GetRides event, Emitter<RideResultState> emit) async {
    await _getCachedRideDataUseCase.call().then((value) {
      return value.fold(
        (l) => rides = [],
        (r) {
          rides = r.toList();
        },
      );
    });
  }
}
