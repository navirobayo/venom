import 'package:hive/hive.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:venom/src/features/price/domain/models/price_model.dart';

part 'price_list.freezed.dart';
part 'price_list.g.dart';

@Freezed(
  makeCollectionsUnmodifiable: true,
  copyWith: true,
  fromJson: true,
  toJson: true,
  equal: true,
)

/// asd
@HiveType(typeId: 9)
class PriceList with _$PriceList {
  ///adsasd
  factory PriceList({
    @HiveField(0, defaultValue: []) List<Price>? prices,
  }) = _PriceList;

  ///das
  factory PriceList.fromJson(Map<String, Object?> json) =>
      _$PriceListFromJson(json);
}
