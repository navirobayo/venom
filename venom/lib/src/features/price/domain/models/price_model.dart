import 'package:hive/hive.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'price_model.freezed.dart';
part 'price_model.g.dart';

@Freezed(
  makeCollectionsUnmodifiable: true,
  copyWith: true,
  fromJson: true,
  toJson: true,
  equal: true,
)

/// asd
@HiveType(typeId: 5)
class Price with _$Price {
  ///adsasd
  factory Price({
    @HiveField(0, defaultValue: 0) int? id,
    @HiveField(1, defaultValue: 0.0) double? price,
    @HiveField(2, defaultValue: '') String? placeOfPurchase,
  }) = _Price;

  ///das
  factory Price.fromJson(Map<String, Object?> json) => _$PriceFromJson(json);
}
