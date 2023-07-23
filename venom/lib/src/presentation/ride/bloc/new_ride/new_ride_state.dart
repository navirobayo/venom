part of 'new_ride_bloc.dart';

@freezed
class NewRideState with _$NewRideState {
  const factory NewRideState.idle(
      bool isStarted, Vehicle defaultVehicle, Price defaultPrice) = _Idle;

  const factory NewRideState.failure(String message, RideFailure failure) =
      _Failure;

  const factory NewRideState.loading() = _Loading;
}
