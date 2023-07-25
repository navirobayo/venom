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
    @HiveField(0, defaultValue: 0) @Default(0) int id,
    @HiveField(1, defaultValue: '') @Default('') String name,
    @HiveField(2, defaultValue: '') @Default('') String tankCapacity,
    @HiveField(3, defaultValue: false) @Default(false) bool isDefault,
  }) = _Vehicle;

  ///das
  factory Vehicle.fromJson(Map<String, Object?> json) =>
      _$VehicleFromJson(json);
}
