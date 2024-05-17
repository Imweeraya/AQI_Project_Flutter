import 'package:air_buddy/feature/map/data/repository/here_station_repository.dart';
import 'package:air_buddy/feature/map/data/repository/station_repository.dart';
import 'package:air_buddy/feature/map/domain/services/here_station_service.dart';
import 'package:air_buddy/feature/map/domain/services/station_service.dart';
import 'package:air_buddy/weather_feature/data/repository/status_weather_repository.dart';
import 'package:core_libs/dependency_injection/get_it.dart';

import '../../weather_feature/domain/service/weather_service.dart';
import '../port_weather/repository.dart';
import '../port_weather/service.dart';

void registerStationService(){
  getIt.registerSingleton<IStationRepository>(StationRepository());
  getIt.registerSingleton<IStationService>(StationService());
}

void registerHereStationService(){
  getIt.registerSingleton<IHereStationRepository>(HereStationRepository());
  getIt.registerSingleton<IHereStationService>(HereStationService());
}

void registerStatusWeatherServices(){
  getIt.registerSingleton<IStatusWeatherRepository>(StatusWeatherRepository());
  getIt.registerSingleton<IStatusWeatherService>(StatusWeatherService());
}