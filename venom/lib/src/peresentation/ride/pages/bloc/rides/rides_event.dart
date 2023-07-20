part of 'rides_bloc.dart';

@freezed
class RidesEvent with _$RidesEvent {
  const factory RidesEvent.getRides() = _GetRides;
  const factory RidesEvent.deleteRides(int? id) = _DeleteRide;
  const factory RidesEvent.createRide(Ride? ride) = _CreateRide;
  const factory RidesEvent.cacheRides(List<Ride>? rides) = _CacheRides;
}
