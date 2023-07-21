// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_list.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class VehicleListAdapter extends TypeAdapter<VehicleList> {
  @override
  final int typeId = 8;

  @override
  VehicleList read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return VehicleList(
      vehicles: fields[0] == null ? [] : (fields[0] as List?)?.cast<Vehicle>(),
    );
  }

  @override
  void write(BinaryWriter writer, VehicleList obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.vehicles);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VehicleListAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VehicleList _$$_VehicleListFromJson(Map<String, dynamic> json) =>
    _$_VehicleList(
      vehicles: (json['vehicles'] as List<dynamic>?)
          ?.map((e) => Vehicle.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_VehicleListToJson(_$_VehicleList instance) =>
    <String, dynamic>{
      'vehicles': instance.vehicles,
    };
