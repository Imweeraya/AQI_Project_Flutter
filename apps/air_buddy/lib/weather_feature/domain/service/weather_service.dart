
import 'package:air_buddy/weather_feature/domain/entities/air_entity.dart';
import 'package:air_buddy/weather_feature/mock/mock_search_city.dart';
import 'package:air_buddy/weather_feature/mock/weather.dart';

import '../../../infrastructure/port_weather/service.dart';

class StatusWeatherService extends IStatusWeatherService {
  // final IWeatherRepository repository = getit.get<IWeatherRepository>();

  @override
  Future<List<Air>> getListWeatherForecast() async{
    return Future.value(mockAirData);
  }
  
  @override
  Future<List<Air>> getListCityWeather() {
    return Future.value(mockCityData);
  }


}
