import 'package:dartz/dartz.dart';
import 'package:venom/src/features/core/models/tuple.dart' as tuple;
import 'package:venom/src/features/auth/domain/failures/auth_failure.dart';
import 'package:venom/src/features/auth/domain/models/otp_handshake_response.dart';
import 'package:venom/src/features/auth/domain/repositories/auth_repository.dart';
import 'package:venom/src/features/core/models/use_case.dart';

class OtpHandshakeUseCase
    implements
        UseCase<AuthFailure, OtpHandshakeResponse, tuple.Tuple1<double>> {
  const OtpHandshakeUseCase(this.repo);

  final AuthRepository repo;

  @override
  Future<Either<AuthFailure, OtpHandshakeResponse>> call(
          {tuple.Tuple1<double>? param}) =>
      (param == null)
          ? Future.value(left(const AuthFailure.nullParam()))
          : repo.otpHandshake(phoneNumber: param.value1);
}
