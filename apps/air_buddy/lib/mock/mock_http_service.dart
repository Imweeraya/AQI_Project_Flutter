import 'package:core_libs/network/http/http_service.dart';

class MockHttpService extends HttpService{
  dynamic returnData;
  MockHttpService(super.url);

  @override
  Future get(String path) async {
    return returnData;
  }

}