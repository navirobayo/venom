// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ride_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RideAdapter extends TypeAdapter<Ride> {
  @override
  final int typeId = 5;

  @override
  Ride read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Ride(
      id: fields[0] == null ? 0 : fields[0] as int?,
      timeTraveled: fields[1] == null ? '' : fields[1] as String?,
      distanceTravelled: fields[2] == null ? '' : fields[2] as String?,
      gasUsed: fields[3] == null ? '' : fields[3] as String?,
      gasPrice: fields[4] == null ? '' : fields[4] as String?,
      averageSpeed: fields[5] == null ? '' : fields[5] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Ride obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.timeTraveled)
      ..writeByte(2)
      ..write(obj.distanceTravelled)
      ..writeByte(3)
      ..write(obj.gasUsed)
      ..writeByte(4)
      ..write(obj.gasPrice)
      ..writeByte(5)
      ..write(obj.averageSpeed);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RideAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Ride _$$_RideFromJson(Map<String, dynamic> json) => _$_Ride(
      id: json['id'] as int?,
      timeTraveled: json['timeTraveled'] as String?,
      distanceTravelled: json['distanceTravelled'] as String?,
      gasUsed: json['gasUsed'] as String?,
      gasPrice: json['gasPrice'] as String?,
      averageSpeed: json['averageSpeed'] as String?,
    );

Map<String, dynamic> _$$_RideToJson(_$_Ride instance) => <String, dynamic>{
      'id': instance.id,
      'timeTraveled': instance.timeTraveled,
      'distanceTravelled': instance.distanceTravelled,
      'gasUsed': instance.gasUsed,
      'gasPrice': instance.gasPrice,
      'averageSpeed': instance.averageSpeed,
    };
