import 'package:venom/src/core/interceptors/auth_header_suplier.dart';
import 'package:venom/src/features/auth/data/data_sources/local/auth_local_data_source.dart';
import 'package:venom/src/features/auth/data/data_sources/remote/auth_remote_data_source.dart';
import 'package:venom/src/features/auth/domain/models/otp_verify_params.dart';
import 'package:venom/src/features/auth/domain/models/otp_verify_response.dart';
import 'package:venom/src/features/auth/domain/models/otp_handshake_response.dart';
import 'package:venom/src/features/auth/domain/failures/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:venom/src/features/auth/domain/repositories/auth_repository.dart';
import 'package:venom/src/features/core/models/base_response.dart';
import 'package:venom/src/injectable/injectable.dart';

class AuthRepositoryImpl extends AuthRepository {
  final AuthRemoteDataSource _remoteDS;
  final AuthLocalDataSource _localDS;
  final String tokenFieldKey = 'token';

  AuthRepositoryImpl(this._remoteDS, this._localDS);

  @override
  Future<Either<AuthFailure, OtpHandshakeResponse>> otpHandshake(
      {required double phoneNumber}) {
    return _remoteDS.otpHandshake(phoneNumber: phoneNumber).then((response) {
      return response.fold(
        (l) => left<AuthFailure, OtpHandshakeResponse>(AuthFailure.api(l)),
        (r) => right<AuthFailure, OtpHandshakeResponse>(
          OtpHandshakeResponse.fromJson(
              BaseResponse.fromJson(r.data ?? {}).toJson()),
        ),
      );
    });
  }

  // @override
  // Future<Either<AuthFailure, void>> cacheAuthData({required String token}) {
  //   throw UnimplementedError();
  // }

  // @override
  // Future<Either<AuthFailure, OtpVerifyResponse>> getCachedAuthData() {
  //   throw UnimplementedError();
  // }

  @override
  Future<Either<AuthFailure, OtpVerifyResponse>> otpVerify(
      {required OtpVerifyParams verifyParams, required double phoneNumber}) {
    return _remoteDS
        .otpVerify(params: verifyParams.toJson(), phoneNumber: phoneNumber)
        .then(
          (value) => value.fold(
            (l) => left<AuthFailure, OtpVerifyResponse>(
              AuthFailure.api(l),
            ),
            (r) async {
              final otpVerifyResponse = OtpVerifyResponse.fromJson(
                BaseResponse.fromJson(r.data ?? {}).toJson(),
              );
              await _localDS.cacheData(
                fieldKey: tokenFieldKey,
                value: OtpVerifyResponse(token: otpVerifyResponse.token),
              );

              getIt.get<AuthHeaderSupplier>().setToken(otpVerifyResponse.token);

              return right<AuthFailure, OtpVerifyResponse>(
                otpVerifyResponse,
              );
            },
          ),
        );
  }
}
