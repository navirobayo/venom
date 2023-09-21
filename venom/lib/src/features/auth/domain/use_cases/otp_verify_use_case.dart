import 'package:dartz/dartz.dart';
import 'package:venom/src/features/auth/domain/failures/auth_failure.dart';
import 'package:venom/src/features/auth/domain/models/otp_verify_params.dart';
import 'package:venom/src/features/auth/domain/models/otp_verify_response.dart';
import 'package:venom/src/features/auth/domain/repositories/auth_repository.dart';
import 'package:venom/src/features/core/models/tuple.dart' as tuple;
import 'package:venom/src/features/core/models/use_case.dart';

class OtpVerifyUseCase
    implements
        UseCase<AuthFailure, OtpVerifyResponse,
            tuple.Tuple2<double, OtpVerifyParams>> {
  const OtpVerifyUseCase(this.repo);

  final AuthRepository repo;

  @override
  Future<Either<AuthFailure, OtpVerifyResponse>> call(
          {tuple.Tuple2<double, OtpVerifyParams>? param,}) =>
      (param == null)
          ? Future.value(left(const AuthFailure.nullParam()))
          : repo.otpVerify(
              phoneNumber: param.value1, verifyParams: param.value2,);
}
