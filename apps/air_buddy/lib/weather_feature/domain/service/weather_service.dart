
import 'package:air_buddy/weather_feature/domain/entities/air_entity.dart';
import 'package:air_buddy/weather_feature/mock/weather.dart';

import '../../../infrastructure/port_weather/service.dart';

class StatusWeatherService extends IStatusWeatherService {
  // final IWeatherRepository repository = getit.get<IWeatherRepository>();

  @override
  Future<List<Air>> getWeatherForecast() async{
    return Future.value(mockAirData);
  }


}
