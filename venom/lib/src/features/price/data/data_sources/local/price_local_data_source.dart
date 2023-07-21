import 'package:database_service/database_service.dart';
import 'package:venom/src/features/price/domain/models/price_list.dart';

class PriceLocalDataSource extends DatabaseCommonOperations<PriceList> {
  final DatabaseService dbService;

  PriceLocalDataSource(this.dbService)
      : super(
          boxName: 'PriceDataSource',
          databaseService: dbService,
        );
}
