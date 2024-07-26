import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

class AuthenticationApi {
  final Dio _dio = Dio();
  final Logger _logger = Logger();

  Future<void> register({
    required String email,
    required String password,
  }) async {
    try {
      await Future.delayed(const Duration(seconds: 2));
      final response = await _dio.post(
          "https://alogasoftwaresolution.com/APIA/AlogaAdmin/API/ClientsTtp/GETLIST",
          options: Options(
            headers: {
              'Content-Type': 'application/json',
            },
          ),
          data: {
            "email": email,
            "password": password,
          });
      _logger.i(response.data);
    } catch (e) {
      _logger.e(e);
    }
  }
}
