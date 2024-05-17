import 'dart:async';

import 'package:air_buddy/feature/map/data/models/hearStationModel.dart';
import 'package:air_buddy/weather_feature/domain/entities/air_entity.dart';
import 'package:air_buddy/weather_feature/domain/entities/polution_entity.dart';
import 'package:air_buddy/weather_feature/domain/entities/weather_city.dart';
import 'package:air_buddy/weather_feature/mock/mock_search_city.dart';
import 'package:air_buddy/weather_feature/mock/weather.dart';
import 'package:core_libs/dependency_injection/get_it.dart';
import 'package:core_ui/widgets/error/error_page.dart';

import '../../../infrastructure/port_weather/repository.dart';
import '../../../infrastructure/port_weather/service.dart';
import '../entities/weather_entity.dart';

class StatusWeatherService extends IStatusWeatherService {
  final IStatusWeatherRepository repository = getIt.get<IStatusWeatherRepository>();

  Future<List<Air>> getWeatherForecast(String city) async {
    final rawAir = await repository.getWeatherForecast(city);
    final rawCityWeather = await repository.getWeatherByCity(city);
    List<Air> weatherForecast;

    try {
      if(rawCityWeather.status == 'ok' && rawAir.isNotEmpty){
        weatherForecast = rawAir.asMap().map(
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
                    rawCityWeather.data!.forecast!.daily!.o3!.length > i + 2
                    ? rawCityWeather.data!.forecast!.daily!.o3![i+2].avg
                    : null,
                avgUvi: rawCityWeather.data!.forecast!.daily!.uvi != null &&
                    rawCityWeather.data!.forecast!.daily!.uvi!.isNotEmpty &&
                    rawCityWeather.data!.forecast!.daily!.uvi!.length > i+2
                    ? rawCityWeather.data!.forecast!.daily!.uvi![i+2].avg
                    : null,
                avgPm10: rawCityWeather.data!.forecast!.daily!.pm10 != null &&
                    rawCityWeather.data!.forecast!.daily!.pm10!.isNotEmpty &&
                    rawCityWeather.data!.forecast!.daily!.pm10!.length > i+2
                    ? rawCityWeather.data!.forecast!.daily!.pm10![i+2].avg
                    : null,
                avgPm25: rawCityWeather.data!.forecast!.daily!.pm25 != null &&
                    rawCityWeather.data!.forecast!.daily!.pm25!.isNotEmpty &&
                    rawCityWeather.data!.forecast!.daily!.pm25!.length > i+2
                    ? rawCityWeather.data!.forecast!.daily!.pm25![i+2].avg
                    : null,
                aqi: rawCityWeather.data!.aqi,
                date: rawCityWeather.data!.forecast!.daily!.pm25 != null &&
                    rawCityWeather.data!.forecast!.daily!.pm25!.isNotEmpty &&
                    rawCityWeather.data!.forecast!.daily!.pm25!.length > i + 2
                    ? rawCityWeather.data!.forecast!.daily!.pm25![i + 2].day
                    : null,
                city: rawCityWeather.data!.city!.name,
              ),
            ),
          ),
        ).values.toList();
      }
      else{
        return [];
      }
    } catch (e) {
      print('Error while processing weather forecast: $e');
      weatherForecast = [];
    }

    return weatherForecast;
  }

  @override
  Future<WeatherCity> getWeatherByCity(String city) async {
    try{
      final weatherCity = await repository.getWeatherByCity(city);
      if(weatherCity.status == 'ok'){
        return WeatherCity(
          stationName: weatherCity.data!.city!.name,
          aqi: weatherCity.data!.aqi.toString(),
        );
      }else{
        return WeatherCity();
      }
    }catch(e){
      throw e;
    }
  }
}
