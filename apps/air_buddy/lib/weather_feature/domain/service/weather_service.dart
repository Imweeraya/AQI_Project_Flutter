
import 'package:air_buddy/weather_feature/domain/entities/weather_entity.dart';
import 'package:air_buddy/weather_feature/domain/port/service.dart';
import 'package:air_buddy/weather_feature/mock/weather.dart';

class WeatherService extends IWeatherService {
  // final IWeatherRepository repository = getit.get<IWeatherRepository>();

  @override
  Future<List<Weather>> getWeatherForecast() async{
    return Future.value(mockweathersforecast);
  }


}
