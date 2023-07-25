part of 'my_vehicle_bloc.dart';

@freezed
class MyVehicleState with _$MyVehicleState {
  const factory MyVehicleState.idle(List<Vehicle> vehicles) = _Idle;
  const factory MyVehicleState.failure(String message, VehicleFailure failure) =
      _Failure;

  const factory MyVehicleState.loading() = _Loading;
}
