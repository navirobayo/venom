import 'package:database_service/database_service.dart';
import 'package:injectable/injectable.dart';
import 'package:venom/src/features/price/data/data_sources/local/price_local_data_source.dart';
import 'package:venom/src/features/price/data/repositories/price_repository_impl.dart';
import 'package:venom/src/features/price/domain/repositories/price_repository.dart';
import 'package:venom/src/features/price/domain/use_cases/cache_prices_data_use_case.dart';
import 'package:venom/src/features/price/domain/use_cases/get_cached_prices_data_use_case.dart';
import 'package:venom/src/injectable/injectable.dart';

@module
abstract class PriceFeatureModule {
  PriceLocalDataSource get localDS => PriceLocalDataSource(
        getIt.get<DatabaseService>(),
      );

  PriceRepository get repo => PriceRepositoryImpl(localDS);
  GetCachedPriceDataUseCase get getPricesUseCase =>
      GetCachedPriceDataUseCase(repo);
  CachePriceDataUseCase get cachePricesUseCase => CachePriceDataUseCase(repo);
}
