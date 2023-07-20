import 'package:hive/hive.dart';
// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'otp_verify_response.g.dart';

@HiveType(typeId: 2)
@JsonSerializable()
class OtpVerifyResponse {
  @HiveField(0)
  final String token;

  OtpVerifyResponse({required this.token});
  
  factory OtpVerifyResponse.fromJson(Map<String,dynamic>json) => _$OtpVerifyResponseFromJson(json);

  Map<String, dynamic> toJson()=> _$OtpVerifyResponseToJson(this);
}
