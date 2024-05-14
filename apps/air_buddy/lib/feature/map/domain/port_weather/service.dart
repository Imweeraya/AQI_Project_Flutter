import 'package:air_buddy/feature/map/domain/entitys/weather.dart';

abstract class IWeatherService {
  Future<List<WeatherToDisplay>> getByLatLng(double lat,double lng);
}