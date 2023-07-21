part of 'final_data_bloc.dart';

@freezed
class FinalDataState with _$FinalDataState {
  const factory FinalDataState.idle(double gasLevel) = _Idle;

  const factory FinalDataState.failure(String message, RideFailure failure) =
      _Failure;

  const factory FinalDataState.loading() = _Loading;
}
