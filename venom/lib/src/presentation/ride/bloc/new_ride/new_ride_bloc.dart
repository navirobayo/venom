import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:venom/src/features/price/domain/models/price_model.dart';
import 'package:venom/src/features/ride/domain/failures/ride_failure.dart';
import 'package:venom/src/features/ride/domain/models/ride_model.dart';
import 'package:venom/src/features/vehicle/domain/models/vehicle_model.dart';
import 'package:venom/src/injectable/injectable.dart';
import 'package:venom/src/presentation/gas_price/bloc/gas_price/gas_price_bloc.dart';
import 'package:venom/src/presentation/settings/bloc/default_price/default_price_bloc.dart';
import 'package:venom/src/presentation/settings/bloc/default_vehicle/default_vehicle_bloc.dart';
import 'package:venom/src/presentation/vehicle/bloc/my_vehicle/my_vehicle_bloc.dart';

part 'new_ride_state.dart';
part 'new_ride_event.dart';
part 'new_ride_bloc.freezed.dart';

@lazySingleton
class NewRideBloc extends Bloc<NewRideEvent, NewRideState> {
  NewRideBloc() : super(NewRideState.idle(false, Vehicle(), Price())) {
    on<_StartTimer>(_onStartTimer);
    on<_GetPriceData>(_onGetPriceData);
    on<_GetVehicleData>(_onGetVehicleData);
    add(_GetPriceData());
    add(_GetVehicleData());
  }
  List<Ride> newRide = List.empty(growable: true);
  bool _isStarted = false;
  Vehicle _defaultVehicle = Vehicle();
  Price _defaultPrice = Price();

  FutureOr<void> _onStartTimer(_StartTimer event, Emitter<NewRideState> emit) {
    _isStarted = true;
    emit(NewRideState.idle(true, _defaultVehicle, _defaultPrice));
  }

  FutureOr<void> _onGetPriceData(
      _GetPriceData event, Emitter<NewRideState> emit) {
    getIt.get<GasPriceBloc>().state.maybeWhen(
          orElse: () {},
          idle: (prices) {
            if (prices.isEmpty) {
              return;
            }
            _defaultPrice =
                getIt.get<DefaultPriceBloc>().state.price ?? prices.last;
            if (getIt.isRegistered<Price>()) {
              getIt.unregister<Price>();
              getIt.registerSingleton<Price>(_defaultPrice);
            } else {
              getIt.registerSingleton<Price>(_defaultPrice);
            }

            emit(NewRideState.idle(_isStarted, _defaultVehicle, _defaultPrice));
          },
        );
  }

  FutureOr<void> _onGetVehicleData(
      _GetVehicleData event, Emitter<NewRideState> emit) {
    getIt.get<MyVehicleBloc>().state.maybeWhen(
          orElse: () {},
          idle: (vehicles) {
            if (vehicles.isEmpty) {
              return;
            }
            _defaultVehicle =
                getIt.get<DefaultVehicleBloc>().state.vehicle ?? vehicles.last;
            if (getIt.isRegistered<Vehicle>()) {
              getIt.unregister<Vehicle>();
              getIt.registerSingleton<Vehicle>(_defaultVehicle);
            } else {
              getIt.registerSingleton<Vehicle>(_defaultVehicle);
            }
            emit(NewRideState.idle(_isStarted, _defaultVehicle, _defaultPrice));
          },
        );
  }
}
