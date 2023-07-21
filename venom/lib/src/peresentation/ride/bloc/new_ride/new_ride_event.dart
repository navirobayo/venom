part of 'new_ride_bloc.dart';

@freezed
class NewRideEvent with _$NewRideEvent {
  const factory NewRideEvent.startTimer() = _StartTimer;
  const factory NewRideEvent.getVehicleData() = _GetVehicleData;
  const factory NewRideEvent.getPriceData() = _GetPriceData;
}
