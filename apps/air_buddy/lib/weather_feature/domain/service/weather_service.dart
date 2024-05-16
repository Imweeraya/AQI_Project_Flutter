import 'package:air_buddy/weather_feature/domain/entities/air_entity.dart';
import 'package:air_buddy/weather_feature/mock/weather.dart';
import 'package:core_libs/dependency_injection/get_it.dart';

import '../../../infrastructure/port_weather/repository.dart';
import '../../../infrastructure/port_weather/service.dart';
import '../entities/polution_entity.dart';
import '../entities/weather_entity.dart';

class StatusWeatherService extends IStatusWeatherService {
  final IStatusWeatherRepository repository =
  getIt.get<IStatusWeatherRepository>();

  @override
  Future<List<Air>> getWeatherForecast(String city) async {
    final rawAir = await repository.getWeatherForecast(city);
    final rawCityWeather = await repository.getWeatherByCity(city);

    final weatherForecast = rawAir.asMap().map(
          (i, e) => MapEntry(
        i,
        Air(
          weather: AirWeather(
            weatherType: e.weatherForecast7Day!.weatherType,
            weatherText: e.weatherForecast7Day!.weatherTypeText,
            maxTemp: e.weatherForecast7Day!.maxTemperature,
            minTemp: e.weatherForecast7Day!.minTemperature,
            windDirection: e.weatherForecast7Day!.windDirection,
            windSpeed: e.weatherForecast7Day!.windSpeed,
          ),
          pollution: AirPollution(
            avgO3: rawCityWeather.data!.forecast!.daily!.o3 != null &&
                rawCityWeather.data!.forecast!.daily!.o3!.isNotEmpty &&
                rawCityWeather.data!.forecast!.daily!.o3!.length > i
                ? rawCityWeather.data!.forecast!.daily!.o3![i].avg
                : null,
            avgUvi: rawCityWeather.data!.forecast!.daily!.uvi != null &&
                rawCityWeather.data!.forecast!.daily!.uvi!.isNotEmpty &&
                rawCityWeather.data!.forecast!.daily!.uvi!.length > i
                ? rawCityWeather.data!.forecast!.daily!.uvi![i].avg
                : null,
            avgPm10: rawCityWeather.data!.forecast!.daily!.pm10 != null &&
                rawCityWeather.data!.forecast!.daily!.pm10!.isNotEmpty &&
                rawCityWeather.data!.forecast!.daily!.pm10!.length > i
                ? rawCityWeather.data!.forecast!.daily!.pm10![i].avg
                : null,
            avgPm25: rawCityWeather.data!.forecast!.daily!.pm25 != null &&
                rawCityWeather.data!.forecast!.daily!.pm25!.isNotEmpty &&
                rawCityWeather.data!.forecast!.daily!.pm25!.length > i
                ? rawCityWeather.data!.forecast!.daily!.pm25![i].avg
                : null,
            aqi: rawCityWeather.data!.aqi,
            date: rawCityWeather.data!.time!.iso,
            city: rawCityWeather.data!.city!.name,
          ),
        ),
      ),
    ).values.toList();
    print(weatherForecast.map((e) => e.weather.maxTemp));
    print(weatherForecast.map((e) => e.pollution.aqi));
    print(weatherForecast.map((e) => e.pollution.avgUvi));

    return weatherForecast;
  }
}
