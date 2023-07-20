import 'package:api_service/api_service.dart';

abstract class RideRemoteDataSource {}

class RideRemoteDataSourceImpl implements RideRemoteDataSource {
  RideRemoteDataSourceImpl(this.apiService);
  final ApiService apiService;
}
