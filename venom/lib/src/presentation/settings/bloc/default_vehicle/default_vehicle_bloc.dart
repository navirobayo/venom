import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
// import 'package:venom/src/features/core/models/tuple.dart' as tuple;
import 'package:venom/src/features/vehicle/domain/models/vehicle_model.dart';
import 'package:venom/src/injectable/injectable.dart';
import 'package:venom/src/presentation/vehicle/bloc/my_vehicle/my_vehicle_bloc.dart';

part 'default_vehicle_state.dart';
part 'default_vehicle_event.dart';
part 'default_vehicle_bloc.freezed.dart';

@lazySingleton
class DefaultVehicleBloc
    extends Bloc<DefaultVehicleEvent, DefaultVehicleState> {
  DefaultVehicleBloc() : super(DefaultVehicleState.idle()) {
    on<_ReadDefaultVehicle>(_onReadDefaultVehicle);
    on<_SetDefaultVehicle>(_onSetDefaultVehicle);
  }

  FutureOr<void> _onReadDefaultVehicle(
      _ReadDefaultVehicle event, Emitter<DefaultVehicleState> emit) async {
    try {
      getIt.get<MyVehicleBloc>().state.maybeWhen(
            orElse: () {},
            idle: (vehicles) {
              if (vehicles.isNotEmpty &&
                  vehicles.firstWhere((element) => element.isDefault == true) !=
                      -1) {
                emit(
                  DefaultVehicleState.idle(
                      vehicle: vehicles
                          .firstWhere((element) => element.isDefault == true)),
                );
              } else {
                emit(DefaultVehicleState.idle(vehicle: vehicles.last));
              }
            },
          );
    } catch (_) {}
  }

  FutureOr<void> _onSetDefaultVehicle(
      _SetDefaultVehicle event, Emitter<DefaultVehicleState> emit) async {
    try {
      Vehicle vehicle = event.vehicle!.copyWith(isDefault: true);
      getIt.get<MyVehicleBloc>().add(MyVehicleEvent.updateVehicle(vehicle));
      await Future.delayed(Duration(milliseconds: 250));
      add(DefaultVehicleEvent.readDefaultVehicle());
    } catch (_) {}
  }
}
