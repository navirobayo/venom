import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

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
    @HiveField(0, defaultValue: '') @Default('0') String id,
    @HiveField(1, defaultValue: '') @Default('0') String timeTraveled,
    @HiveField(2, defaultValue: '') @Default('0') String distanceTravelled,
    @HiveField(3, defaultValue: '') @Default('0') String gasUsed,
    @HiveField(4, defaultValue: '') @Default('0') String gasPrice,
    @HiveField(5, defaultValue: '') @Default('0') String averageSpeed,
  }) = _Ride;

  ///das
  factory Ride.fromJson(Map<String, Object?> json) => _$RideFromJson(json);
}
