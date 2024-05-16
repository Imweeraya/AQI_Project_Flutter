import 'package:air_buddy/feature/map/domain/entitys/station.dart';
import 'package:air_buddy/feature/map/domain/entitys/weather.dart';

import '../entitys/here_station.dart';

abstract class IWeatherService {
  Future <WeatherToDisplay> getByLatLng(double lat,double lng);
}

abstract class IStationService {
  Future <StationToDisplay> getStation(double lat,double lng);
}

abstract class IHereStationService {
  Future <HereStationToDisplay> getHereStation();
}