import 'package:air_buddy/weather_feature/domain/entities/polution_entity.dart';
import 'package:air_buddy/weather_feature/domain/entities/weather_entity.dart';

class Air {
  Weather weather;
  Polution polution;

  Air({
    required this.weather,
    required this.polution
  });
}