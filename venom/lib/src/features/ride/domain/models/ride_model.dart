import 'package:hive/hive.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ride_model.freezed.dart';
part 'ride_model.g.dart';

@Freezed(
  makeCollectionsUnmodifiable: true,
  copyWith: true,
  fromJson: true,
  toJson: true,
  equal: true,
)

/// asd
@HiveType(typeId: 6)
class Ride with _$Ride {
  ///adsasd
  factory Ride({
    @HiveField(0, defaultValue: 0) int? id,
    @HiveField(1, defaultValue: '') String? timeTraveled,
    @HiveField(2, defaultValue: '') String? distanceTravelled,
    @HiveField(3, defaultValue: '') String? gasUsed,
    @HiveField(4, defaultValue: '') String? gasPrice,
    @HiveField(5, defaultValue: '') String? averageSpeed,
  }) = _Ride;

  ///das
  factory Ride.fromJson(Map<String, Object?> json) => _$RideFromJson(json);
}
