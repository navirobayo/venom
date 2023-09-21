// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:venom/src/features/core/failures/failure.dart';

part 'api_failure.freezed.dart';

@freezed
class ApiFailure extends Failure with _$ApiFailure {
  const factory ApiFailure.faildHandshake() = _FaildHandshake;
  const factory ApiFailure.unknown(e) = _Unknown;
  const factory ApiFailure.wrongPhoneNumber() = _WrongPhoneNumber;
}
