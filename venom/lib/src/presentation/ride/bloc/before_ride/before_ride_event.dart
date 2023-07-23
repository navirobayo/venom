part of 'before_ride_bloc.dart';

@freezed
class BeforeRideEvent with _$BeforeRideEvent {
  const factory BeforeRideEvent.changeTime(DateTime? timeSelected) =
      _ChangeTime;
  const factory BeforeRideEvent.acceptTime(DateTime? timeSelected) =
      _AcceptTime;
}
