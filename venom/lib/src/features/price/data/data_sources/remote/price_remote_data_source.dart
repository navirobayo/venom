import 'package:api_service/api_service.dart';

abstract class PriceRemoteDataSource {}

class PriceRemoteDataSourceImpl implements PriceRemoteDataSource {
  PriceRemoteDataSourceImpl(this.apiService);
  final ApiService apiService;
}
