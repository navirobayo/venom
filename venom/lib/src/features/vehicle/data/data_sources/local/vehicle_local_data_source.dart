import 'package:database_service/database_service.dart';
import 'package:venom/src/features/vehicle/domain/models/vehicle_list.dart';

class VehicleLocalDataSource extends DatabaseCommonOperations<VehicleList> {
  final DatabaseService dbService;

  VehicleLocalDataSource(this.dbService)
      : super(
          boxName: 'VehicleDataSource',
          databaseService: dbService,
        );
}
