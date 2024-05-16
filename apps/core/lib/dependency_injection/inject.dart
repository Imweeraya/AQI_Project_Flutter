

import 'package:air_buddy/infrastructure/dependency_injection/inject.dart';

void registerServices() {
  registerWeatherServices();
  registerStatusWeatherServices();
  registerStationService();
  registerHereStationService();
}