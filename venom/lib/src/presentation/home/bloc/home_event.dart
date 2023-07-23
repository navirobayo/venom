part of 'home_bloc.dart';

@Freezed(when: FreezedWhenOptions(maybeWhen: true))
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.checkDataIsAvailable() = _CheckDataIsAvailable;
}
