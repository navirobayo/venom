part of 'home_bloc.dart';

@Freezed(when: FreezedWhenOptions(maybeWhen: true))
class HomeState with _$HomeState {
  const factory HomeState.idle({@Default(false) bool isLoading}) = _Idle;
  const factory HomeState.failure({
    HomeFailure? failure,
    @Default('') String message,
  }) = _Failure;
}
