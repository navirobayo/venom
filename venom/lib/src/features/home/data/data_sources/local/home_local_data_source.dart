import 'package:database_service/database_service.dart';

class HomeLocalDataSource
    extends DatabaseCommonOperations<String> {

  HomeLocalDataSource(this.dbService)
      : super(
          boxName: 'HomeDataSource',
          databaseService: dbService,
        );
  final DatabaseService dbService;
}
