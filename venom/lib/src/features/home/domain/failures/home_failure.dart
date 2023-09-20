// ignore_for_file: depend_on_referenced_packages

import 'package:database_service/database_service.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:venom/src/features/core/failures/failure.dart';

part 'home_failure.freezed.dart';

@freezed
class HomeFailure extends Failure with _$HomeFailure {
  ///
  const factory HomeFailure.cancelledByUser() = _CancelledByUser;
  const factory HomeFailure.missingToken() = _MissingToken;

  ///
  const factory HomeFailure.api(DioException failure) = _Api;
  const factory HomeFailure.nullParam() = _NullParam;
  const factory HomeFailure.database(DatabaseError failure) = _Database;
}
