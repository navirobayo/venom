import 'package:api_service/api_service.dart';

abstract class VehicleRemoteDataSource {}

class VehicleRemoteDataSourceImpl implements VehicleRemoteDataSource {
  VehicleRemoteDataSourceImpl(this.apiService);
  final ApiService apiService;
}
