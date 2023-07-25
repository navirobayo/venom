part of 'my_vehicle_bloc.dart';

@freezed
class MyVehicleEvent with _$MyVehicleEvent {
  factory MyVehicleEvent.deleteVehicle(int index) = _DeleteVehicle;
  factory MyVehicleEvent.cacheVehicle(Vehicle vehicle) = _CacheVehicle;
  factory MyVehicleEvent.getCachedVehicles() = _GetCachedVehicles;
}
