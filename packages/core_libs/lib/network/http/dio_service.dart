import 'package:core_libs/network/http/http_service.dart';
import 'package:dio/dio.dart';

class DioService extends HttpService{
  late Dio dio;

  DioService(super.url) {
    dio = Dio();
  }

  @override
  Future get(String path) async {
    final response = await dio.get('$url$path');
    if(response.statusCode == 200){
      return response.data;
    } else{
      return null;
    }
  }

}