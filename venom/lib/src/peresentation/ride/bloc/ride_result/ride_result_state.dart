part of 'ride_result_bloc.dart';

@freezed
class RideResultState with _$RideResultState {
  const factory RideResultState.idle(
    Ride? ride,
  ) = _Idle;

  const factory RideResultState.failure(String message, RideFailure failure) =
      _Failure;

  const factory RideResultState.loading() = _Loading;
}
