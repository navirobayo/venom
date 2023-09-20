// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_list.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PriceListAdapter extends TypeAdapter<PriceList> {
  @override
  final int typeId = 19;

  @override
  PriceList read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PriceList(
      prices: fields[0] == null ? [] : (fields[0] as List).cast<Price>(),
    );
  }

  @override
  void write(BinaryWriter writer, PriceList obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.prices);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PriceListAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PriceList _$$_PriceListFromJson(Map<String, dynamic> json) => _$_PriceList(
      prices: (json['prices'] as List<dynamic>?)
              ?.map((e) => Price.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Price>[],
    );

Map<String, dynamic> _$$_PriceListToJson(_$_PriceList instance) =>
    <String, dynamic>{
      'prices': instance.prices,
    };
