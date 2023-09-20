import 'package:dartz/dartz.dart';
import 'package:venom/src/features/core/models/tuple.dart' as tuple;
import 'package:venom/src/features/core/models/use_case.dart';
import 'package:venom/src/features/theme/domain/failures/theme_failure.dart';
import 'package:venom/src/features/theme/domain/models/venom_theme_data.dart';
import 'package:venom/src/features/theme/domain/repositories/theme_repository.dart';

class ChangeThemeUseCase
    implements UseCase<ThemeFailure, void, tuple.Tuple1<VenomThemeData>> {
  const ChangeThemeUseCase(this.repo);

  final ThemeRepository repo;

  @override
  Future<Either<ThemeFailure, void>> call({
    tuple.Tuple1<VenomThemeData>? param,
  }) =>
      (param == null)
          ? Future.value(left(const ThemeFailure.nullParam()))
          : repo.changeTheme(param.value1);
}
