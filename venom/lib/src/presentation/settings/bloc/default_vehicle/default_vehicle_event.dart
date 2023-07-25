part of 'default_vehicle_bloc.dart';

@freezed
class DefaultVehicleEvent with _$DefaultVehicleEvent {
  factory DefaultVehicleEvent.setDefaultVehicle(Vehicle? vehicle) =
      _SetDefaultVehicle;
  factory DefaultVehicleEvent.readDefaultVehicle() = _ReadDefaultVehicle;
}
