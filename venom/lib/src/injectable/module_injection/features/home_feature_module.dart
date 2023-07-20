import 'package:api_service/api_service.dart';
import 'package:database_service/database_service.dart';
import 'package:injectable/injectable.dart';
import 'package:venom/src/features/home/data/data_sources/local/home_local_data_source.dart';
import 'package:venom/src/features/home/data/data_sources/remote/home_remote_data_source.dart';
import 'package:venom/src/features/home/data/repositories/home_repository_impl.dart';
import 'package:venom/src/features/home/domain/repositories/home_repository.dart';
import 'package:venom/src/injectable/injectable.dart';

@module
abstract class HomeFeatureModule {
  HomeRemoteDataSource get remoteDS => HomeRemoteDataSourceImpl(
        getIt.get<ApiService>(),
      );
  HomeLocalDataSource get localDS => HomeLocalDataSource(
        getIt.get<DatabaseService>(),
      );

  HomeRepository get repo => HomeRepositoryImpl(remoteDS, localDS);
}
