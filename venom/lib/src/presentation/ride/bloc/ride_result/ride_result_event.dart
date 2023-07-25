part of 'ride_result_bloc.dart';

@freezed
class RideResultEvent with _$RideResultEvent {
  const factory RideResultEvent.analyzeRide() = _AnalyzeRide;
  const factory RideResultEvent.getRides() = _GetRides;
  const factory RideResultEvent.saveAndClose(Ride? ride) = _SaveAndClose;
}
