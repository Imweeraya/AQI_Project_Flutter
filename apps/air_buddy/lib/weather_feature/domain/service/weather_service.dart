
import 'package:air_buddy/weather_feature/domain/entities/air_entity.dart';
import 'package:air_buddy/weather_feature/domain/port/service.dart';
import 'package:air_buddy/weather_feature/mock/weather.dart';

class WeatherService extends IWeatherService {
  // final IWeatherRepository repository = getit.get<IWeatherRepository>();

  @override
  Future<List<Air>> getWeatherForecast() async{
    return Future.value(mockAirData);
  }


}
