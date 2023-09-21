import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';
import 'package:venom/src/features/core/models/tuple.dart' as tuple;
import 'package:venom/src/features/ride/domain/failures/ride_failure.dart';
import 'package:venom/src/features/ride/domain/models/ride_model.dart';
import 'package:venom/src/features/ride/domain/use_cases/cache_rides_data_use_case.dart';
import 'package:venom/src/features/ride/domain/use_cases/get_cached_rides_use_case.dart';
import 'package:venom/src/injectable/injectable.dart';

part 'rides_state.dart';
part 'rides_event.dart';
part 'rides_bloc.freezed.dart';

@lazySingleton
class RidesBloc extends Bloc<RidesEvent, RidesState> {
  RidesBloc(this._getCachedRideDataUseCase, this._cacheRideDataUseCase)
      : super(const RidesState.idle([])) {
    on<_GetRides>(_onGetRides);
    on<_CacheRide>(_onCacheRide);
    on<_DeleteRide>(_onDeleteRide);
    on<_GetCachedRides>(_onGetCacheRides);
    add(const _GetRides());
  }
  final GetCachedRideDataUseCase _getCachedRideDataUseCase;
  final CacheRideDataUseCase _cacheRideDataUseCase;
  List<Ride> rides = List.empty(growable: true);

  FutureOr<void> _onGetRides(_GetRides event, Emitter<RidesState> emit) async {
    try {
      await _getCachedRideDataUseCase.call().then(
        (value) {
          return value.fold(
            (l) {
              l.maybeWhen(
                orElse: () {},
                database: (failure) {
                  emit(
                    RidesState.failure("can't get datas", l),
                  );
                },
                nullParam: () {
                  emit(
                    RidesState.failure('Rides is Empty', l),
                  );
                },
              );
            },
            (r) {
              if (getIt.isRegistered<List<Ride>>()) {
                getIt
                  ..unregister<List<Ride>>()
                  ..registerSingleton<List<Ride>>(r);
              } else {
                getIt.registerSingleton<List<Ride>>(r);
              }
              rides = r;
              return emit(RidesState.idle(r));
            },
          );
        },
      );
    } catch (e) {
      emit(const RidesState.failure('failed', RideFailure.cancelledByUser()));
    }
  }

  FutureOr<void> _onCacheRide(
    _CacheRide event,
    Emitter<RidesState> emit,
  ) async {
    var rides = <Ride>[];
    if (getIt.isRegistered<List<Ride>>()) {
      rides = getIt.get<List<Ride>>().toList();
    }
    rides.add(event.ride.copyWith(id: getIt.get<Uuid>().v8()));
    await _cacheRideDataUseCase.call(param: tuple.Tuple1(rides)).then(
          (value) => value.fold(
            (l) => emit(RidesState.failure('database Error', l)),
            (r) {
              if (getIt.isRegistered<List<Ride>>()) {
                getIt
                  ..unregister<List<Ride>>()
                  ..registerSingleton<List<Ride>>(rides);
              } else {
                getIt.registerSingleton<List<Ride>>(rides);
              }
              emit(RidesState.idle(rides));
            },
          ),
        );
  }

  FutureOr<void> _onGetCacheRides(
    _GetCachedRides event,
    Emitter<RidesState> emit,
  ) async {
    await _getCachedRideDataUseCase.call().then(
          (value) => value.fold(
            (l) {
              emit(RidesState.failure('No Data', l));
            },
            (r) {
              if (getIt.isRegistered<List<Ride>>()) {
                getIt
                  ..unregister<List<Ride>>()
                  ..registerSingleton<List<Ride>>(r);
              } else {
                getIt.registerSingleton<List<Ride>>(r);
              }
              emit(RidesState.idle(r));
            },
          ),
        );
  }

  FutureOr<void> _onDeleteRide(
    _DeleteRide event,
    Emitter<RidesState> emit,
  ) async {
    var ridess = <Ride>[];
    if (getIt.isRegistered<List<Ride>>()) {
      ridess = getIt.get<List<Ride>>().toList();
    }
    if (ridess.isNotEmpty) {
      ridess.removeAt(event.index);
    }
    await _cacheRideDataUseCase.call(param: tuple.Tuple1(ridess)).then(
          (value) => value.fold(
            (l) => emit(RidesState.failure('database Error', l)),
            (r) {
              if (getIt.isRegistered<List<Ride>>()) {
                getIt
                  ..unregister<List<Ride>>()
                  ..registerSingleton<List<Ride>>(ridess);
              } else {
                getIt.registerSingleton<List<Ride>>(ridess);
              }
              emit(RidesState.idle(ridess));
            },
          ),
        );
  }
}
