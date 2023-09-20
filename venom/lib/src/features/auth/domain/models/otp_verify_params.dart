import 'package:hive/hive.dart';
// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'otp_verify_params.g.dart';

@HiveType(typeId: 1)
@JsonSerializable()
class OtpVerifyParams {
  OtpVerifyParams({required this.phoneNumber});

  factory OtpVerifyParams.fromJson(Map<String, dynamic> json) =>
      _$OtpVerifyParamsFromJson(json);
  @HiveField(0)
  final double phoneNumber;

  Map<String, dynamic> toJson() => _$OtpVerifyParamsToJson(this);
}
