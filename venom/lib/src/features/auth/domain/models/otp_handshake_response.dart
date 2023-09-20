import 'package:hive/hive.dart';
// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'otp_handshake_response.g.dart';

@HiveType(typeId: 0)
@JsonSerializable()
class OtpHandshakeResponse {
  OtpHandshakeResponse({required this.verifyCode});

  factory OtpHandshakeResponse.fromJson(Map<String, dynamic> json) =>
      _$OtpHandshakeResponseFromJson(json);
  @HiveField(0)
  final String verifyCode;

  Map<String, dynamic> toJson() => _$OtpHandshakeResponseToJson(this);
}
