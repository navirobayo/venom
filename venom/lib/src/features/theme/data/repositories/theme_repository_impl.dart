import 'package:dartz/dartz.dart';
import 'package:venom/src/features/theme/data/data_sources/local/theme_local_data_source.dart';
import 'package:venom/src/features/theme/domain/failures/theme_failure.dart';
import 'package:venom/src/features/theme/domain/models/venom_theme_data.dart';
import 'package:venom/src/features/theme/domain/repositories/theme_repository.dart';

class ThemeRepositoryImpl extends ThemeRepository {
  ThemeRepositoryImpl(this._localDS);
  final ThemeLocalDataSource _localDS;
  final String tokenFieldKey = 'themeData';

  @override
  Future<Either<ThemeFailure, void>> changeTheme(VenomThemeData theme) async {
    try {
      return _localDS.cacheData(fieldKey: tokenFieldKey, value: theme).then(
            (value) => value.fold(
              (l) => left(ThemeFailure.database(l)),
              (r) => right(null),
            ),
          );
    } catch (e) {
      return left(const ThemeFailure.missingToken());
    }
  }

  @override
  Future<Either<ThemeFailure, VenomThemeData>> getTheme() async {
    try {
      return _localDS.getCachedData(fieldKey: tokenFieldKey).then(
            (value) => value.fold(
              (l) => left(ThemeFailure.database(l)),
              (r) {
                if (r == null) {
                  return left(const ThemeFailure.missingToken());
                }
                return right(r);
              },
            ),
          );
    } catch (e) {
      return left(const ThemeFailure.missingToken());
    }
  }
}
