import 'package:database_service/database_service.dart';

class HomeLocalDataSource
    extends DatabaseCommonOperations<String> {
  final DatabaseService dbService;

  HomeLocalDataSource(this.dbService)
      : super(
          boxName: 'HomeDataSource',
          databaseService: dbService,
        );
}
