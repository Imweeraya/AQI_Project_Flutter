import 'package:air_buddy/feature/map/domain/entitys/station.dart';
import 'package:air_buddy/feature/map/domain/entitys/weather.dart';

import '../../feature/map/domain/entitys/here_station.dart';
import '../../weather_feature/domain/entities/air_entity.dart';

abstract class IWeatherService {
  Future <WeatherToDisplay> getByLatLng(double lat,double lng);
}

abstract class IStationService {
  Future <StationToDisplay> getStation(double lat,double lng);
}

abstract class IHereStationService {
  Future <HereStationToDisplay> getHereStation();
}

abstract class IStatusWeatherService {
  Future<List<Air>> getWeatherForecast();
}