import 'package:hive/hive.dart';
// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'base_response.g.dart';

@HiveType(typeId: 4)
@JsonSerializable()
class BaseResponse {
  BaseResponse({
    required this.data,
    required this.status,
    required this.code,
  });

  factory BaseResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseFromJson(json);
  @HiveField(0)
  final dynamic data;
  @HiveField(1)
  final String status;
  @HiveField(2)
  final int code;

  Map<String, dynamic> toJson() => _$BaseResponseToJson(this);
}
