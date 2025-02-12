import 'package:assesment_task/core/utils/constants.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@singleton
class ApiManager {
  final Dio dio;

  // Initialize Dio in the constructor
  ApiManager()
      : dio = Dio(
          BaseOptions(
            baseUrl: AppConstants.BaseUrl,
            validateStatus: (status) {
              return status != null && status < 500;
            },
          ),
        );

  Future<Response> getData(String endPoint,
      {Map<String, dynamic>? Parameters, Map<String, dynamic>? headers}) {
    return dio.get(endPoint,
        queryParameters: Parameters, options: Options(headers: headers));
  }

  Future<Response> postData(String endPoint,
      {Map<String, dynamic>? body, Map<String, dynamic>? headers}) {
    return dio.post(endPoint, data: body, options: Options(headers: headers));
  }

  Future<Response> putData(String endPoint,
      {Map<String, dynamic>? body, Map<String, dynamic>? headers}) {
    return dio.put(AppConstants.BaseUrl + endPoint,
        data: body, options: Options(headers: headers));
  }

  Future<Response> deleteData(String endPoint,
      {Map<String, dynamic>? body, Map<String, dynamic>? headers}) {
    return dio.delete(AppConstants.BaseUrl + endPoint,
        data: body, options: Options(headers: headers));
  }
}
