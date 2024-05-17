import 'package:air_buddy/infrastructure/port_weather/repository.dart';
import 'package:air_buddy/weather_feature/data/models/CityStationModel.dart';
import 'package:air_buddy/weather_feature/data/models/ForecastModel.dart';
import 'package:core_libs/dependency_injection/get_it.dart';
import 'package:core_libs/network/http/http_service.dart';

class StatusWeatherRepository extends IStatusWeatherRepository{
  final HttpService statusHttpService = getIt.get<HttpService>(instanceName: 'tmd');
  final HttpService cityHttpService = getIt.get<HttpService>(instanceName: 'waqi');

  @override
  Future<List<ForecastModel>> getWeatherForecast(String city) async {
    final statusWeather = await statusHttpService.get('/api/WeatherForecast7Day/weather-forecast-7day-by-province?Sorting=weatherForecast7Day.recordTime%20asc&FilterText=$city&MaxResultCount=7&culture=th-TH');
    List<ForecastModel> forecasts = [];
    for (dynamic res in statusWeather) {
      forecasts.add(ForecastModel.fromJson(res));
    }
    return forecasts;
  }

  @override
  Future<CityStationModel> getWeatherByCity(String city)async {
    final cityWeather = await cityHttpService.get('/feed/$city/?token=c446149c4593b2dd221b9d37f1b7612a658f4ccc');
    return CityStationModel.fromJson(cityWeather);
  }
}