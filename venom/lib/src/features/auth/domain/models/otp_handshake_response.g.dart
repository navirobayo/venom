// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_handshake_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class OtpHandshakeResponseAdapter extends TypeAdapter<OtpHandshakeResponse> {
  @override
  final int typeId = 0;

  @override
  OtpHandshakeResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return OtpHandshakeResponse(
      verifyCode: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, OtpHandshakeResponse obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.verifyCode);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OtpHandshakeResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OtpHandshakeResponse _$OtpHandshakeResponseFromJson(
        Map<String, dynamic> json) =>
    OtpHandshakeResponse(
      verifyCode: json['verifyCode'] as String,
    );

Map<String, dynamic> _$OtpHandshakeResponseToJson(
        OtpHandshakeResponse instance) =>
    <String, dynamic>{
      'verifyCode': instance.verifyCode,
    };
