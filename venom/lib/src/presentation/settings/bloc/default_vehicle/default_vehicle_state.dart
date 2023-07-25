part of 'default_vehicle_bloc.dart';

@freezed
class DefaultVehicleState with _$DefaultVehicleState {
  const factory DefaultVehicleState.idle({Vehicle? vehicle}) = _Idle;
}
