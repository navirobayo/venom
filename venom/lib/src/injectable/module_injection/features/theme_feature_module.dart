import 'package:database_service/database_service.dart';
import 'package:injectable/injectable.dart';
import 'package:venom/src/features/theme/data/data_sources/local/theme_local_data_source.dart';
import 'package:venom/src/features/theme/data/repositories/theme_repository_impl.dart';
import 'package:venom/src/features/theme/domain/repositories/theme_repository.dart';
import 'package:venom/src/features/theme/domain/use_cases/change_theme_use_case.dart';
import 'package:venom/src/features/theme/domain/use_cases/get_theme_use_case.dart';
import 'package:venom/src/injectable/injectable.dart';

@module
abstract class ThemeFeatureModule {
  ThemeLocalDataSource get localDS => ThemeLocalDataSource(
        getIt.get<DatabaseService>(),
      );

  ThemeRepository get repo => ThemeRepositoryImpl(localDS);
  GetThemeUseCase get getThemeUseCase => GetThemeUseCase(repo);
  ChangeThemeUseCase get cacheThemeUseCase => ChangeThemeUseCase(repo);
}
