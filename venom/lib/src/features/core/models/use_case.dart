import 'package:dartz/dartz.dart';
import 'package:venom/src/features/core/models/tuple.dart';

abstract class UseCase<F, S, Params extends Tuple> {
  Future<Either<F, S>> call({Params? param});
}
