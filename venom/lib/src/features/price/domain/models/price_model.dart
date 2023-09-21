import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

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
@HiveType(typeId: 15)
class Price with _$Price {
  ///adsasd
  factory Price({
    @HiveField(0, defaultValue: '') @Default('') String id,
    @HiveField(1, defaultValue: 0.0) @Default(0.0) double price,
    @HiveField(2, defaultValue: '') @Default('') String placeOfPurchase,
    @HiveField(3, defaultValue: false) @Default(false) bool isDefault,
  }) = _Price;

  ///das
  factory Price.fromJson(Map<String, Object?> json) => _$PriceFromJson(json);
}
