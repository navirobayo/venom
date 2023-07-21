import 'package:database_service/database_service.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/failures/failure.dart';

part 'vehicle_failure.freezed.dart';

@freezed
class VehicleFailure extends Failure with _$VehicleFailure {
  ///
  const factory VehicleFailure.cancelledByUser() = _CancelledByUser;
  const factory VehicleFailure.missingToken() = _MissingToken;

  ///
  const factory VehicleFailure.api(DioException failure) = _Api;
  const factory VehicleFailure.nullParam() = _NullParam;
  const factory VehicleFailure.database(DatabaseError failure) = _Database;
}
