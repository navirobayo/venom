part of 'rides_bloc.dart';

@freezed
class RidesEvent with _$RidesEvent {
  const factory RidesEvent.getRides() = _GetRides;
  factory RidesEvent.deleteRide(int index) = _DeleteRide;
  factory RidesEvent.cacheRide(Ride ride) = _CacheRide;
  factory RidesEvent.getCachedRides() = _GetCachedRides;
}
