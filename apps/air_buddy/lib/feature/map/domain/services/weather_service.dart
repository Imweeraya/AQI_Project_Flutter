import 'package:air_buddy/infrastructure/port_weather/service.dart';
import 'package:core_libs/dependency_injection/get_it.dart';

import '../../../../infrastructure/port_weather/repository.dart';
import '../entitys/weather.dart';

class WeatherService extends IWeatherService {
  final IWeatherRepository repository = getIt.get<IWeatherRepository>();

  @override
  Future<WeatherToDisplay> getByLatLng(double lat, double lng) async {
    final rawWeather = await repository.getByLatLng(lat, lng);
    return WeatherToDisplay(
      aqi: rawWeather.data?.aqi,
      name: rawWeather.data?.city?.name,
      pm25: rawWeather.data?.iaqi?.pm25?.v,
    );
  }
}
