part of 'new_ride_bloc.dart';

@freezed
class NewRideState with _$NewRideState {
  const factory NewRideState.idle(
    Vehicle defaultVehicle,
    Price defaultPrice, {
    bool? isStarted,
  }) = _Idle;

  const factory NewRideState.failure(String message, RideFailure failure) =
      _Failure;

  const factory NewRideState.loading() = _Loading;
}
