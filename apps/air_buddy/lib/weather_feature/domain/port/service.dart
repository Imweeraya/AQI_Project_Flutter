


import 'package:air_buddy/weather_feature/domain/entities/air_entity.dart';

abstract class IWeatherService {
  Future<List<Air>> getWeatherForecast();
}