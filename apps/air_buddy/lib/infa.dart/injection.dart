
import 'package:air_buddy/weather_feature/domain/port/service.dart';
import 'package:air_buddy/weather_feature/domain/service/weather_service.dart';
import 'package:core_libs/depedency_injection/get_it.dart';


void registerWeatherServices(){
  // getit.registerSingleton<IProductRepository>(ProductRepository());
  getIt.registerSingleton<IWeatherService>(WeatherService());
}