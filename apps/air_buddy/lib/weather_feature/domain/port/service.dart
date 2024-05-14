


import 'package:air_buddy/weather_feature/domain/entities/weather_entity.dart';

abstract class IWeatherService {
  Future<List<Weather>> getWeatherForecast();
}