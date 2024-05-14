
import '../../data/repository/weatherModel.dart';

abstract class IWeatherRepository {
  Future<List<WeatherModel>> getByLatLng(double lat,double lng);
}