import 'package:database_service/database_service.dart';
import 'package:venom/src/features/theme/domain/models/venom_theme_data.dart';

class ThemeLocalDataSource extends DatabaseCommonOperations<VenomThemeData> {
  ThemeLocalDataSource(this.dbService)
      : super(
          boxName: 'ThemeLocalDataSource',
          databaseService: dbService,
        );
  final DatabaseService dbService;
}
