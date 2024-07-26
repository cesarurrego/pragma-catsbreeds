import 'package:dio/dio.dart';

class ApiClient {
  final Dio _dio;

  const ApiClient(this._dio);

  Future<Response<T>> get<T>(String path, {Map<String, dynamic>? headers}) async {
    return _dio.fetch(
      RequestOptions(
        method: 'GET',
        path: '${_dio.options.baseUrl}$path',
        headers: headers,
      ),
    );
  }

  Future<Response<T>> post<T>(String path, Object? data, {Map<String, dynamic>? headers}) async {
    return _dio.fetch(
      RequestOptions(
        method: 'POST',
        path: '${_dio.options.baseUrl}$path',
        data: data,
        headers: headers,
      ),
    );
  }
}
