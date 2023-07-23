part of 'rides_bloc.dart';

@freezed
class RidesState with _$RidesState {
  const factory RidesState.idle(List<Ride> rides) = _Idle;

  const factory RidesState.failure(String message, RideFailure failure) =
      _Failure;

  const factory RidesState.loading() = _Loading;
}
