// ignore_for_file: unused_element

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:venom/src/config/utils/function_helper.dart';
import 'package:venom/src/injectable/injectable.dart';

@injectable
class RequestInterceptor extends Interceptor {
  RequestInterceptor();

  FunctionHelper appHelper = FunctionHelper();

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    appHelper.logMessage(
      'REQUEST[${options.method}] => PATH: ${options.path}',
    );
    options.baseUrl = '';
    const token = '';
    if (token.isNotEmpty) {
      options.headers = {
        'Authorization': 'Bearer $token',
      };
    }

    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response<void> response, ResponseInterceptorHandler handler) {
    appHelper.logMessage(
      'RESPONSE[${response.statusCode}]=>PATH: ${response.requestOptions.path}',
    );
    super.onResponse(response, handler);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    appHelper.logMessage(
      'ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}',
    );

    if (err.response?.statusCode == 401 && err.requestOptions.path != '') {
      // refresh token
      return;
    } else if (err.message!.contains('XMLHttpRequest')) {
      // reject the request
      return;
    }
    super.onError(err, handler);
  }

  // Future<Either<DioException, Response<Map<String, dynamic>>>>
  //     _callRefreshTokenApi() async =>
  // await getIt.get<ApiService>().postMethod<Map<String, dynamic>>(
  // const AuthEndpoints.refreshToken().toPath,
  // option: const ApiServiceOption(),
  // );

  Future<void> _updateToken(String refreshedToken) async {
    if (kIsWeb) {}
  }

  Future<void> _retryLastRequest(
    RequestOptions requestOptions,
    ErrorInterceptorHandler handler,
    String refreshedToken,
  ) async {
    final newHeader = requestOptions.headers;
    newHeader['Authorization'] = 'Bearer $refreshedToken';
    await getIt
        .get<Dio>()
        .request<void>(
          '',
          data: requestOptions.data,
          onReceiveProgress: requestOptions.onReceiveProgress,
          queryParameters: requestOptions.queryParameters,
          options: Options(
            headers: newHeader,
            method: requestOptions.method,
            contentType: requestOptions.contentType,
            extra: requestOptions.extra,
          ),
        )
        .then((res) => handler.resolve(res))
        .catchError(
      // ignore: inference_failure_on_untyped_parameter
      (e) {
        if (e is DioException) handler.reject(e);
      },
    );
  }
}
