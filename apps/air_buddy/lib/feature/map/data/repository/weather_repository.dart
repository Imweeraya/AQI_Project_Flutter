import 'package:air_buddy/feature/map/data/repository/weatherModel.dart';
import 'package:air_buddy/feature/map/domain/port_weather/repository.dart';
import 'package:core_libs/dependency_injection/get_it.dart';
import 'package:core_libs/network/http/http_service.dart';

class WeatherRepository implements IWeatherRepository{
  final HttpService httpService = getIt.get<HttpService>();
  @override
  Future<List<WeatherModel>> getByLatLng(double lat, double lng) async {
    final weather = await httpService.get('/geo:$lat;$lng/?token=c446149c4593b2dd221b9d37f1b7612a658f4ccc');
    List<WeatherModel> weathers = [];
    for (dynamic res in weather) {
      weathers.add(WeatherModel.fromJson(res));
    }
    return weathers;
  }

}