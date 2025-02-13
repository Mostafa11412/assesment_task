import 'package:assesment_task/core/utils/constants.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@singleton
class ApiManager {
  static late Dio dio;

  static void init() {
    dio = Dio(
      BaseOptions(
        baseUrl: AppConstants.baseUrl,
        validateStatus: (status) {
          // Allow Dio to return responses for all status codes
          return status != null;
        },
      ),
    );
  }

  Future<Response> getData(String endPoint,
      {Map<String, dynamic>? parameters, Map<String, dynamic>? headers}) {
    return dio.get(endPoint,
        queryParameters: parameters, options: Options(headers: headers));
  }

  Future<Response> postData(String endPoint,
      {Map<String, dynamic>? body, Map<String, dynamic>? headers}) {
    return dio.post(endPoint, data: body, options: Options(headers: headers));
  }

  Future<Response> putData(String endPoint,
      {Map<String, dynamic>? body, Map<String, dynamic>? headers}) {
    return dio.put(endPoint, data: body, options: Options(headers: headers));
  }

  Future<Response> deleteData(String endPoint,
      {Map<String, dynamic>? body, Map<String, dynamic>? headers}) {
    return dio.delete(endPoint, data: body, options: Options(headers: headers));
  }
}
