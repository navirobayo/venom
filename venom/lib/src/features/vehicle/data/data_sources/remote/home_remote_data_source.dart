import 'package:api_service/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

abstract class HomeRemoteDataSource {
  Future<Either<DioException, Response<Map<String, dynamic>>>>
      getDataSurahsFromServer();
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  HomeRemoteDataSourceImpl(this.apiService);
  final ApiService apiService;
  @override
  Future<Either<DioException, Response<Map<String, dynamic>>>>
      getDataSurahsFromServer() {
    return apiService.getMethod(
      'http://api.alvenom.cloud/v1/surah',
      option: const ApiServiceOption(
        header: ApiServiceHeader.basic(
          headers: {
            'accept': 'application/json',
          },
        ),
      ),
    );
  }
}
