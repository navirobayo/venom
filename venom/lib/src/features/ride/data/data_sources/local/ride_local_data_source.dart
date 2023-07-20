import 'package:database_service/database_service.dart';
import 'package:venom/src/features/ride/domain/models/ride_model.dart';

class RideLocalDataSource extends DatabaseCommonOperations<List<Ride>> {
  final DatabaseService dbService;

  RideLocalDataSource(this.dbService)
      : super(
          boxName: 'RideDataSource',
          databaseService: dbService,
        );
}
