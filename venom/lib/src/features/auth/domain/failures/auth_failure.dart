// ignore_for_file: depend_on_referenced_packages

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:venom/src/features/core/failures/database_failure.dart';
import '../../../core/failures/failure.dart';

part 'auth_failure.freezed.dart';

@freezed
class AuthFailure extends Failure with _$AuthFailure {
  ///
  const factory AuthFailure.cancelledByUser() = _CancelledByUser;
  const factory AuthFailure.missingToken() = _MissingToken;

  ///
  const factory AuthFailure.api(DioException failure) = _Api;
  const factory AuthFailure.nullParam() = _NullParam;
  const factory AuthFailure.database(DatabaseFailure failure) = _Database;
}
