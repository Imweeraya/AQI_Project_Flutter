import 'package:air_buddy/feature/map/data/repository/weather_repository.dart';
import 'package:air_buddy/feature/map/domain/port_weather/repository.dart';
import 'package:core_libs/dependency_injection/get_it.dart';

void registerWeatherServices(){
  getIt.registerSingleton<IWeatherRepository>(WeatherRepository());
}