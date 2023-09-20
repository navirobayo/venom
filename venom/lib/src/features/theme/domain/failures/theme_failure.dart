// ignore_for_file: depend_on_referenced_packages

import 'package:database_service/database_service.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:venom/src/features/core/failures/failure.dart';

part 'theme_failure.freezed.dart';

@freezed
class ThemeFailure extends Failure with _$ThemeFailure {
  ///
  const factory ThemeFailure.cancelledByUser() = _CancelledByUser;
  const factory ThemeFailure.missingToken() = _MissingToken;

  ///
  const factory ThemeFailure.api(DioException failure) = _Api;
  const factory ThemeFailure.nullParam() = _NullParam;
  const factory ThemeFailure.database(DatabaseError failure) = _Database;
}
