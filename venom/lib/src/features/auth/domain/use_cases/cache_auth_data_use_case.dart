// import 'package:dartz/dartz.dart';
// import 'package:venom/src/features/auth/domain/failures/auth_failure.dart';
// import 'package:venom/src/features/auth/domain/repositories/auth_repository.dart';
// import 'package:venom/src/features/core/models/tuple.dart' as tuple;
// import 'package:venom/src/features/core/models/use_case.dart';

// class CacheAuthDataUseCase
//     implements UseCase<AuthFailure, void, tuple.Tuple1<String>> {
//   const CacheAuthDataUseCase(this.repo);

//   final AuthRepository repo;

//   @override
//   Future<Either<AuthFailure, void>> call({tuple.Tuple1? param}) =>
//       (param == null)
//           ? Future.value(left(const AuthFailure.nullParam()))
//           : repo.cacheAuthData(token: param.value1);
// }
