part of 'km_in_bike_bloc.dart';

@freezed
class KmInBikeEvent with _$KmInBikeEvent {
  const factory KmInBikeEvent.chageGasLevel(double? value) = _ChangeGasLevel;
}
