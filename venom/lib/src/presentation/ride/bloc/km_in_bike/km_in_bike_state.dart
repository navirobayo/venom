part of 'km_in_bike_bloc.dart';

@freezed
class KmInBikeState with _$KmInBikeState {
  const factory KmInBikeState.idle(double gasLevel) = _Idle;

  const factory KmInBikeState.failure(String message, RideFailure failure) =
      _Failure;

  const factory KmInBikeState.loading() = _Loading;
}
