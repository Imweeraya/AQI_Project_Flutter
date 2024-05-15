import 'package:air_buddy/feature/map/domain/entitys/station.dart';
import 'package:air_buddy/feature/map/domain/entitys/weather.dart';

abstract class IWeatherService {
  Future <WeatherToDisplay> getByLatLng(double lat,double lng);
}

abstract class IStationService {
  Future <StationToDisplay> getStation();
}