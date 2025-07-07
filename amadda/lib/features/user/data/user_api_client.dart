import 'package:dio/dio.dart';
// import '../../../core/network/dio_client.dart'; // 추후 서버 연결시 사용

class UserApiClient {
  final Dio _dio;

  UserApiClient()
    : _dio = Dio(
        BaseOptions(
          baseUrl: 'https://jsonplaceholder.typicode.com',
          connectTimeout: const Duration(seconds: 5),
          receiveTimeout: const Duration(seconds: 3),
          headers: {'Content-Type': 'application/json'},
        ),
      ) {
    _dio.interceptors.add(LogInterceptor(responseBody: true));
  }

  Future<Map<String, dynamic>> getUser(int userId) async {
    final response = await _dio.get('/users/$userId');
    return response.data;
  }

  Future<List<dynamic>> getAllUsers() async {
    final response = await _dio.get('/users');
    return response.data;
  }
}
