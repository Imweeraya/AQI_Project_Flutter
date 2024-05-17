import 'package:air_buddy/mock/mock_province.dart';
import 'package:air_buddy/weather_feature/domain/entities/air_entity.dart';
import 'package:air_buddy/weather_feature/domain/entities/weather_city.dart';
import 'package:air_buddy/weather_feature/viewmodel/weather_state.dart';
import 'package:core/constants/aqi/aqi_data.dart';
import 'package:core/constants/aqi/aqi_type.dart';
import 'package:core_libs/dependency_injection/get_it.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../infrastructure/port_weather/service.dart';

part 'weather_viewmodel.g.dart';

@riverpod
class WeatherViewModel extends _$WeatherViewModel {
  IStatusWeatherService service = getIt.get<IStatusWeatherService>();

  @override
  WeatherState build() => WeatherState(
        loading: false,
        loadingCity: false,
        loadingInfo: false,
        currentAir: [],
        currentCityAir: [], 
        city: [],
        cityfilter: [], 
      );

  void getWeathers() async {
    state = state.copyWith(loading: true);

    // final weathersFetchers = service.getListWeatherForecast();
    final weathersFetchers = service.getWeatherForecast('Chiang Mai');
    // final weathers = await Future.wait(weathersFetchers);
    final weatherlist = await Future.value(weathersFetchers);

    state = state.copyWith(
      loading: false,
      currentAir: weatherlist,
    );
  }

  void getCities({String? filter}) async {
    // state = state.copyWith(loadingCity: true);

    final citylist = state.city;

    if (filter != null && filter.isNotEmpty) {
      final filteredCities = citylist
          .where((city) =>
              city.stationName!.toLowerCase().contains(filter.toLowerCase()))
          .toList();
      state = state.copyWith(
        // loadingCity: false,
        cityfilter: filteredCities,
      );
    } else {
      state = state.copyWith(
        // loadingCity: false,
        cityfilter: citylist,
      );
    }
  }

  AqiData getAqiData(int aqi) {
    if (aqi > 0 && aqi <= 50) {
      return aqiDataList[AqiType.good]!;
    } else if (aqi > 50 && aqi <= 100) {
      return aqiDataList[AqiType.moderate]!;
    } else if (aqi > 100 && aqi <= 150) {
      return aqiDataList[AqiType.unhealthyForSensitive]!;
    } else if (aqi > 150 && aqi <= 200) {
      return aqiDataList[AqiType.unhealthy]!;
    } else if (aqi > 200 && aqi <= 300) {
      return aqiDataList[AqiType.veryUnhealthy]!;
    } else {
      return aqiDataList[AqiType.hazadous]!;
    }
  }

  //ignore: avoid_build_context_in_providers
  void goInfoScreen(BuildContext context, List<Air> listWeather) {
    context.push('/info', extra: listWeather);
  }

  void goInfoScreenByCityName(BuildContext context, String stationName) async {
    final tempWeather = state.currentAir;
    state = state.copyWith(
      loadingInfo: true,
      currentCityAir: tempWeather,
    );

    context.push('/info', extra: state.currentCityAir);
    final weathersFetchers = service.getWeatherForecast(stationName);
    final weatherlist = await Future.value(weathersFetchers);
     state = state.copyWith(
      currentCityAir: weatherlist,
    );
    
    context.replace('/info', extra: state.currentCityAir);

    state = state.copyWith(
      loadingInfo: false,
    );
  }

  Future<void> findAllAqiCity() async {
    state = state.copyWith(
      loadingCity: true,
    );
    List<WeatherCity> weatherCities = [];

    for (String cityName in cities) {
      try {
        final station = await service.getWeatherByCity(cityName);
        weatherCities.add(WeatherCity(
          stationName: cityName,
          aqi: station.aqi,
        ));
      } catch (e) {
        // print('Error retrieving data for city $cityName: $e');
      }
    }
    state = state.copyWith(
      city: weatherCities,
      cityfilter: weatherCities,
      loadingCity: false,
    );
  }
}
