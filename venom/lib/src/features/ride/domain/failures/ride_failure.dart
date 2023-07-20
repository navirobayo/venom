// ignore_for_file: depend_on_referenced_packages

import 'package:database_service/database_service.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/failures/failure.dart';

part 'ride_failure.freezed.dart';

@freezed
class RideFailure extends Failure with _$RideFailure {
  ///
  const factory RideFailure.cancelledByUser() = _CancelledByUser;
  const factory RideFailure.missingToken() = _MissingToken;

  ///
  const factory RideFailure.api(DioException failure) = _Api;
  const factory RideFailure.nullParam() = _NullParam;
  const factory RideFailure.database(DatabaseError failure) = _Database;
}
