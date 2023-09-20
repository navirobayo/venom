// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ride_list.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RideListAdapter extends TypeAdapter<RideList> {
  @override
  final int typeId = 10;

  @override
  RideList read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RideList(
      rides: fields[0] == null ? [] : (fields[0] as List).cast<Ride>(),
    );
  }

  @override
  void write(BinaryWriter writer, RideList obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.rides);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RideListAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RideList _$$_RideListFromJson(Map<String, dynamic> json) => _$_RideList(
      rides: (json['rides'] as List<dynamic>?)
              ?.map((e) => Ride.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Ride>[],
    );

Map<String, dynamic> _$$_RideListToJson(_$_RideList instance) =>
    <String, dynamic>{
      'rides': instance.rides,
    };
