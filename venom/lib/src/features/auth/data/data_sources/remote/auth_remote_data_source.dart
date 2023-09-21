import 'package:api_service/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

abstract class AuthRemoteDataSource {
  Future<Either<DioException, Response<Map<String, dynamic>>>> otpHandshake(
      {required double phoneNumber,});

  Future<Either<DioException, Response<Map<String, dynamic>>>>
      getDataFromServer({required double phoneNumber});

  Future<Either<DioException, Response<Map<String, dynamic>>>> otpVerify(
      {required Map<String, dynamic> params, required double phoneNumber,});
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  AuthRemoteDataSourceImpl(this.apiService);
  final ApiService apiService;

  @override
  Future<Either<DioException, Response<Map<String, dynamic>>>> otpHandshake(
          {required double phoneNumber,}) =>
      apiService.postMethod<Map<String, dynamic>>('https://www.asatic.ir/',
          option: ApiServiceOption(
            query: {
              'phone_number': phoneNumber,
            },
          ),
          body: {
            'phone_number': phoneNumber,
          },);

  @override
  Future<Either<DioException, Response<Map<String, dynamic>>>> otpVerify(
      {required Map<String, dynamic> params, required double phoneNumber,}) {
    return apiService.postMethod(
      'https://www.asatic.ir/',
      body: params,
      option: const ApiServiceOption(
        header: ApiServiceHeader.basic(
          headers: {
            'accept': 'application/json',
          },
        ),
      ),
    );
  }

  @override
  Future<Either<DioException, Response<Map<String, dynamic>>>>
      getDataFromServer({required double phoneNumber}) {
    return apiService.getMethod(
      'https://www.asatic.ir/',
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
