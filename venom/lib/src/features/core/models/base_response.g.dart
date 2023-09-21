// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BaseResponseAdapter extends TypeAdapter<BaseResponse> {
  @override
  final int typeId = 4;

  @override
  BaseResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BaseResponse(
      data: fields[0] as dynamic,
      status: fields[1] as String,
      code: fields[2] as int,
    );
  }

  @override
  void write(BinaryWriter writer, BaseResponse obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.data)
      ..writeByte(1)
      ..write(obj.status)
      ..writeByte(2)
      ..write(obj.code);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BaseResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponse _$BaseResponseFromJson(Map<String, dynamic> json) => BaseResponse(
      data: json['data'],
      status: json['status'] as String,
      code: json['code'] as int,
    );

Map<String, dynamic> _$BaseResponseToJson(BaseResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
      'code': instance.code,
    };
