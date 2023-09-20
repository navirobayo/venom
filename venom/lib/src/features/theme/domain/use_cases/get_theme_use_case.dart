import 'package:dartz/dartz.dart';
import 'package:venom/src/features/core/models/tuple.dart' as tuple;
import 'package:venom/src/features/core/models/use_case.dart';
import 'package:venom/src/features/theme/domain/failures/theme_failure.dart';
import 'package:venom/src/features/theme/domain/models/venom_theme_data.dart';
import 'package:venom/src/features/theme/domain/repositories/theme_repository.dart';

class GetThemeUseCase
    implements UseCase<ThemeFailure, VenomThemeData, tuple.Tuple0> {
  const GetThemeUseCase(this.repo);

  final ThemeRepository repo;

  @override
  Future<Either<ThemeFailure, VenomThemeData>> call({
    tuple.Tuple0? param,
  }) =>
      (param == null)
          ? Future.value(left(const ThemeFailure.nullParam()))
          : repo.getTheme();
}
