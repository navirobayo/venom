import 'package:database_service/database_service.dart';
import 'package:venom/src/features/auth/domain/models/otp_verify_response.dart';

class AuthLocalDataSource extends DatabaseCommonOperations<OtpVerifyResponse> {

  AuthLocalDataSource(this.dbService)
      : super(
          boxName: 'AuthDataSource',
          databaseService: dbService,
        );
  final DatabaseService dbService;
}
