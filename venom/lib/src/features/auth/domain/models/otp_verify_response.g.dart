// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_verify_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class OtpVerifyResponseAdapter extends TypeAdapter<OtpVerifyResponse> {
  @override
  final int typeId = 2;

  @override
  OtpVerifyResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return OtpVerifyResponse(
      token: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, OtpVerifyResponse obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.token);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OtpVerifyResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OtpVerifyResponse _$OtpVerifyResponseFromJson(Map<String, dynamic> json) =>
    OtpVerifyResponse(
      token: json['token'] as String,
    );

Map<String, dynamic> _$OtpVerifyResponseToJson(OtpVerifyResponse instance) =>
    <String, dynamic>{
      'token': instance.token,
    };
