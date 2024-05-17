import 'package:air_buddy/feature/map/domain/entitys/station.dart';
import 'package:air_buddy/weather_feature/domain/entities/polution_entity.dart';

import '../../feature/map/domain/entitys/here_station.dart';
import '../../weather_feature/domain/entities/air_entity.dart';
import '../../weather_feature/domain/entities/weather_city.dart';

abstract class IStationService {
  Future <StationToDisplay> getStation(double lat1,double lng1,double lat2,double lng2);
}

abstract class IHereStationService {
  Future <HereStationToDisplay> getHereStation();
}

abstract class IStatusWeatherService {
  Future<List<Air>> getWeatherForecast(String city);
  Future <WeatherCity> getWeatherByCity(String city);
}