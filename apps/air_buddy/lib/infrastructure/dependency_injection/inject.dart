import 'package:air_buddy/feature/map/data/repository/station_repository.dart';
import 'package:air_buddy/feature/map/data/repository/weather_repository.dart';
import 'package:air_buddy/feature/map/domain/port_weather/repository.dart';
import 'package:air_buddy/feature/map/domain/services/station_service.dart';
import 'package:core_libs/dependency_injection/get_it.dart';

import '../../feature/map/domain/port_weather/service.dart';
import '../../feature/map/domain/services/weather_service.dart';

void registerWeatherServices(){
  getIt.registerSingleton<IWeatherRepository>(WeatherRepository());
  getIt.registerSingleton<IWeatherService>(WeatherService());
}

void registerStationService(){
  getIt.registerSingleton<IStationRepository>(StationRepository());
  getIt.registerSingleton<IStationService>(StationService());
}