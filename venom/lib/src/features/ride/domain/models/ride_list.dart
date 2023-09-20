import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:venom/src/features/ride/domain/models/ride_model.dart';

part 'ride_list.freezed.dart';
part 'ride_list.g.dart';

@Freezed(
  makeCollectionsUnmodifiable: true,
  copyWith: true,
  fromJson: true,
  toJson: true,
  equal: true,
)

/// asd
@HiveType(typeId: 10)
class RideList with _$RideList {
  ///adsasd
  factory RideList({
    @HiveField(0, defaultValue: <Ride>[]) @Default(<Ride>[]) List<Ride> rides,
  }) = _RideList;

  ///das
  factory RideList.fromJson(Map<String, Object?> json) =>
      _$RideListFromJson(json);
}
