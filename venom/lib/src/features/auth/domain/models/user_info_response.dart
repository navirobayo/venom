import 'package:hive/hive.dart';
// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'user_info_response.g.dart';

@HiveType(typeId: 3)
@JsonSerializable()
class UserInfoResponse {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String family;
  @HiveField(2)
  final String phoneNumber;
  @HiveField(3)
  final String type;

  UserInfoResponse({
    required this.name,
    required this.family,
    required this.phoneNumber,
    required this.type,
  });

  factory UserInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$UserInfoResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UserInfoResponseToJson(this);
}
