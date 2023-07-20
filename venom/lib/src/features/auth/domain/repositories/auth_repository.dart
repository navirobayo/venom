import 'package:dartz/dartz.dart';
import 'package:venom/src/features/auth/domain/failures/auth_failure.dart';
import 'package:venom/src/features/auth/domain/models/otp_handshake_response.dart';
import 'package:venom/src/features/auth/domain/models/otp_verify_params.dart';
import 'package:venom/src/features/auth/domain/models/otp_verify_response.dart';

abstract class AuthRepository {
  //
  Future<Either<AuthFailure, OtpHandshakeResponse>> otpHandshake(
      {required double phoneNumber});
  //
  Future<Either<AuthFailure, OtpVerifyResponse>> otpVerify({
    required OtpVerifyParams verifyParams,
    required double phoneNumber,
  });
  //
  // Future<Either<AuthFailure, void>> cacheAuthData({
  //   required String token,
  // });
  // //
  // Future<Either<AuthFailure, OtpVerifyResponse>> getCachedAuthData();
  //
}
