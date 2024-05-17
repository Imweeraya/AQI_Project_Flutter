abstract class HttpService {
  final String url;

  HttpService(this.url);

  Future<dynamic> get(String path);
}