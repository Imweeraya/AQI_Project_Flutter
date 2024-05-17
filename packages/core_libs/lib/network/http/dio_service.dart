import 'package:core_libs/network/http/http_service.dart';
import 'package:dio/dio.dart';

class DioService extends HttpService {
  late Dio dio;

  DioService(String url) : super(url) {
    dio = Dio();
  }

  @override
  Future<dynamic> get(String path) async {
    try {
      final response = await dio.get('$url$path');
      if (response.statusCode == 200) {
        return response.data;
      } else {
        return null;
      }
    } on DioError catch (e) {
      if (e.response != null) {
        if (e.response!.statusCode == 429) {
          await Future.delayed(Duration(milliseconds: 1000));
          return null;
        } else {
          throw e;
        }
      } else {
        throw NetworkErrorException();
      }
    }
  }
}

class NetworkErrorException implements Exception {
  final String message = 'Network error occurred. Please check your internet connection.';
}
