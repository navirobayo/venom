import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';
import 'package:venom/src/features/vehicle/domain/failures/vehicle_failure.dart';
import 'package:venom/src/features/vehicle/domain/models/vehicle_model.dart';
import 'package:venom/src/features/core/models/tuple.dart' as tuple;
import 'package:venom/src/features/vehicle/domain/use_cases/cache_vehicles_data_use_case.dart';
import 'package:venom/src/features/vehicle/domain/use_cases/get_cached_vehicles_data_use_case.dart';
import 'package:venom/src/injectable/injectable.dart';
import 'package:venom/src/presentation/settings/bloc/default_vehicle/default_vehicle_bloc.dart';

part 'my_vehicle_state.dart';
part 'my_vehicle_event.dart';
part 'my_vehicle_bloc.freezed.dart';

@lazySingleton
class MyVehicleBloc extends Bloc<MyVehicleEvent, MyVehicleState> {
  final GetCachedVehicleDataUseCase _getcachedVehicleDataUseCase;
  final CacheVehicleDataUseCase _cacheVehicleDataUseCase;
  MyVehicleBloc(
      this._getcachedVehicleDataUseCase, this._cacheVehicleDataUseCase)
      : super(const MyVehicleState.idle([])) {
    on<_CacheVehicle>(_onCacheVehicle);
    on<_DeleteVehicle>(_onDeleteVehicle);
    on<_GetCachedVehicles>(_onGetCachedVehicles);
    on<_UpdateVehicle>(_onUpdateVehicle);
    add(_GetCachedVehicles());
  }

  FutureOr<void> _onCacheVehicle(
      _CacheVehicle event, Emitter<MyVehicleState> emit) async {
    List<Vehicle> vehicles = [];
    if (getIt.isRegistered<List<Vehicle>>()) {
      vehicles = getIt.get<List<Vehicle>>().toList();
    }
    vehicles.add(event.vehicle.copyWith(id: getIt.get<Uuid>().v8()));
    await _cacheVehicleDataUseCase
        .call(param: tuple.Tuple1(vehicles))
        .then((value) => value.fold(
              (l) => emit(MyVehicleState.failure('database Error', l)),
              (r) {
                if (getIt.isRegistered<List<Vehicle>>()) {
                  getIt.unregister<List<Vehicle>>();
                  getIt.registerSingleton<List<Vehicle>>(vehicles);
                } else {
                  getIt.registerSingleton<List<Vehicle>>(vehicles);
                }
                if (vehicles.length == 1) {
                  getIt.get<DefaultVehicleBloc>().add(
                      DefaultVehicleEvent.setDefaultVehicle(vehicles.first));
                }
                emit(MyVehicleState.idle(vehicles));
              },
            ));
  }

  FutureOr<void> _onGetCachedVehicles(
      _GetCachedVehicles event, Emitter<MyVehicleState> emit) async {
    await _getcachedVehicleDataUseCase.call().then((value) => value.fold(
          (l) {
            emit(MyVehicleState.failure('null', l));
          },
          (r) {
            if (getIt.isRegistered<List<Vehicle>>()) {
              getIt.unregister<List<Vehicle>>();
              getIt.registerSingleton<List<Vehicle>>(r);
            } else {
              getIt.registerSingleton<List<Vehicle>>(r);
            }

            // Get Default Vehicle From Hive Database
            getIt
                .get<DefaultVehicleBloc>()
                .add(DefaultVehicleEvent.readDefaultVehicle());

            emit(MyVehicleState.idle(r));
          },
        ));
  }

  FutureOr<void> _onDeleteVehicle(
      _DeleteVehicle event, Emitter<MyVehicleState> emit) async {
    List<Vehicle> vehicles = [];
    if (getIt.isRegistered<List<Vehicle>>()) {
      vehicles = getIt.get<List<Vehicle>>().toList();
    }
    if (vehicles.isNotEmpty) {
      vehicles.removeAt(event.index);
    }
    await _cacheVehicleDataUseCase
        .call(param: tuple.Tuple1(vehicles))
        .then((value) => value.fold(
              (l) => emit(MyVehicleState.failure('database Error', l)),
              (r) {
                if (getIt.isRegistered<List<Vehicle>>()) {
                  getIt.unregister<List<Vehicle>>();
                  getIt.registerSingleton<List<Vehicle>>(vehicles);
                } else {
                  getIt.registerSingleton<List<Vehicle>>(vehicles);
                }
                emit(MyVehicleState.idle(vehicles));
              },
            ));
  }

  FutureOr<void> _onUpdateVehicle(
      _UpdateVehicle event, Emitter<MyVehicleState> emit) async {
    state.maybeWhen(
      orElse: () {},
      idle: (vehicles) async {
        List<Vehicle> vehiclesList = vehicles.toList();
        for (var i = 0; i < vehicles.length; i++) {
          vehiclesList[i] = vehicles[i].copyWith(isDefault: false);
        }
        int vehicleIndex = vehicles.indexWhere((e) =>
            e.tankCapacity == event.vehicle.tankCapacity &&
            e.name == event.vehicle.name);
        Vehicle vehicle = Vehicle();
        vehicle = vehiclesList[vehicleIndex].copyWith(isDefault: true);
        vehiclesList[vehicleIndex] = vehicle;
        await _cacheVehicleDataUseCase
            .call(param: tuple.Tuple1(vehiclesList))
            .then(
              (value) => value.fold(
                (l) => emit(MyVehicleState.failure('database Error', l)),
                (r) {
                  if (getIt.isRegistered<List<Vehicle>>()) {
                    getIt.unregister<List<Vehicle>>();
                    getIt.registerSingleton<List<Vehicle>>(vehiclesList);
                  } else {
                    getIt.registerSingleton<List<Vehicle>>(vehiclesList);
                  }
                  emit(MyVehicleState.idle(vehiclesList));
                },
              ),
            );
      },
    );
  }
}
