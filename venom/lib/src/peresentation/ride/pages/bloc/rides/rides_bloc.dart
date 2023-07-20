import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:venom/src/features/core/models/tuple.dart' as tuple;
import 'package:venom/src/features/ride/domain/failures/ride_failure.dart';
import 'package:venom/src/features/ride/domain/models/ride_model.dart';
import 'package:venom/src/features/ride/domain/use_cases/cache_rides_data_use_case.dart';
import 'package:venom/src/features/ride/domain/use_cases/get_cached_rides_use_case.dart';

part 'rides_state.dart';
part 'rides_event.dart';
part 'rides_bloc.freezed.dart';

@lazySingleton
class RidesBloc extends Bloc<RidesEvent, RidesState> {
  final GetCachedRideDataUseCase _getCachedRideDataUseCase;
  final CacheRideDataUseCase _cacheRideDataUseCase;

  RidesBloc(this._getCachedRideDataUseCase, this._cacheRideDataUseCase)
      : super(const RidesState.loading()) {
    on<_GetRides>(_onGetRides);
    on<_DeleteRide>(_onDeleteRide);
    on<_CreateRide>(_onCreateRide);
    on<_CacheRides>(_onCacheRides);
  }
  List<Ride> rides = List.empty(growable: true);

  FutureOr<void> _onGetRides(_GetRides event, Emitter<RidesState> emit) async {
    try {
      await _getCachedRideDataUseCase.call().then(
            (value) => value.fold(
              (l) {
                l.maybeWhen(
                  orElse: () {},
                  database: (failure) {
                    emit(
                      RidesState.failure('can\'t get datas', l),
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
                rides = r;
                return emit(RidesState.idle(r, false));
              },
            ),
          );
    } catch (e) {
      emit(RidesState.failure('failed', RideFailure.cancelledByUser()));
    }
  }

  FutureOr<void> _onDeleteRide(
      _DeleteRide event, Emitter<RidesState> emit) async {}

  FutureOr<void> _onCreateRide(
      _CreateRide event, Emitter<RidesState> emit) async {
    try {
      if (event.ride == null) {
        emit(RidesState.failure('null param', RideFailure.nullParam()));
      } else {
        rides.add(event.ride!);
        add(RidesEvent.cacheRides(rides));
      }
    } catch (e) {
      emit(
        RidesState.failure(
          'there is problem',
          RideFailure.cancelledByUser(),
        ),
      );
    }
  }

  FutureOr<void> _onCacheRides(
      _CacheRides event, Emitter<RidesState> emit) async {
    try {
      if (event.rides == null) {
        emit(RidesState.failure('null param', RideFailure.nullParam()));
      } else {
        await _cacheRideDataUseCase
            .call(param: tuple.Tuple1(event.rides!))
            .then(
              (value) => value.fold(
                (l) => emit(RidesState.failure('problem', l)),
                (r) => emit(RidesState.idle(rides, false)),
              ),
            );
      }
    } catch (e) {
      emit(
        RidesState.failure(
          'there is problem',
          RideFailure.cancelledByUser(),
        ),
      );
    }
  }
}
