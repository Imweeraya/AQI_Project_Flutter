import 'package:air_buddy/weather_feature/domain/entities/polution_entity.dart';
import 'package:air_buddy/weather_feature/domain/entities/weather_entity.dart';

class Air {
  AirWeather weather;
  AirPollution pollution;

  Air({
    required this.weather,
    required this.pollution
  });
}