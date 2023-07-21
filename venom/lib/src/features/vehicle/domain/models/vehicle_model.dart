import 'package:hive/hive.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicle_model.freezed.dart';
part 'vehicle_model.g.dart';

@Freezed(
  makeCollectionsUnmodifiable: true,
  copyWith: true,
  fromJson: true,
  toJson: true,
  equal: true,
)

/// asd
@HiveType(typeId: 7)
class Vehicle with _$Vehicle {
  ///adsasd
  factory Vehicle({
    @HiveField(0, defaultValue: 0) int? id,
    @HiveField(1, defaultValue: '') String? name,
    @HiveField(2, defaultValue: '') String? tankCapacity,
  }) = _Vehicle;

  ///das
  factory Vehicle.fromJson(Map<String, Object?> json) =>
      _$VehicleFromJson(json);
}
