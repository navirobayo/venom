part of 'before_ride_bloc.dart';

@freezed
class BeforeRideState with _$BeforeRideState {
  const factory BeforeRideState.idle(DateTime timeSelected) = _Idle;

  const factory BeforeRideState.failure(String message, RideFailure failure) =
      _Failure;

  const factory BeforeRideState.loading() = _Loading;
}
