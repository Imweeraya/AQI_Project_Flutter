import 'package:air_buddy/feature/map/domain/entitys/weather.dart';
import 'package:air_buddy/feature/map/domain/port_weather/repository.dart';
import 'package:air_buddy/feature/map/domain/port_weather/service.dart';
import 'package:core_libs/dependency_injection/get_it.dart';

class WeatherService extends IWeatherService{
  final IWeatherRepository repository = getIt.get<IWeatherRepository>();
  @override
  Future<List<WeatherToDisplay>> getByLatLng(double lat, double lng) async {
    final rawWeather = await repository.getByLatLng(lat,lng);
    return rawWeather.map((res) => WeatherToDisplay(
      aqi: res.data.aqi,
      name: res.data.city.name,
      pm25: res.data.iaqi.pm25.v,
    ))
        .toList();
  }

}