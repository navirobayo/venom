import 'package:database_service/database_service.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:venom/src/features/core/failures/failure.dart';

part 'price_failure.freezed.dart';

@freezed
class PriceFailure extends Failure with _$PriceFailure {
  ///
  const factory PriceFailure.cancelledByUser() = _CancelledByUser;
  const factory PriceFailure.missingToken() = _MissingToken;

  ///
  const factory PriceFailure.api(DioException failure) = _Api;
  const factory PriceFailure.nullParam() = _NullParam;
  const factory PriceFailure.database(DatabaseError failure) = _Database;
}
