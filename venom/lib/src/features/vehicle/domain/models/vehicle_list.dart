import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:venom/src/features/vehicle/domain/models/vehicle_model.dart';

part 'vehicle_list.freezed.dart';
part 'vehicle_list.g.dart';

@Freezed(
  makeCollectionsUnmodifiable: true,
  copyWith: true,
  fromJson: true,
  toJson: true,
  equal: true,
)

/// asd
@HiveType(typeId: 18)
class VehicleList with _$VehicleList {
  ///adsasd
  factory VehicleList({
    @HiveField(0, defaultValue: <Vehicle>[])
    @Default(<Vehicle>[])
    List<Vehicle> vehicles,
  }) = _VehicleList;

  ///das
  factory VehicleList.fromJson(Map<String, Object?> json) =>
      _$VehicleListFromJson(json);
}
