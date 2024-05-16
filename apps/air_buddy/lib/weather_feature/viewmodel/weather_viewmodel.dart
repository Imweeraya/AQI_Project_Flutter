import 'package:air_buddy/weather_feature/domain/entities/air_entity.dart';
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
        air: [],
      );

  void getWeathers() async {
    state = state.copyWith(loading: true);

    final weathersFetchers = service.getWeatherForecast('Chiang Mai');
    print(weathersFetchers);
    // final weathers = await Future.wait(weathersFetchers);
    final weatherslist = await Future.value(weathersFetchers);

    state = state.copyWith(
      loading: false,
      air: weatherslist,
    );
  }


  AqiData getAqiData(int aqi) {
    if (aqi > 0 && aqi <= 50) {
      return aqiDataList[AqiType.good]!;
    } else if (aqi > 50 && aqi <= 100) {
      return aqiDataList[AqiType.moderate]!;
    } else if (aqi > 100 && aqi <= 150) {
      return aqiDataList[AqiType.unhealthyForSensitive]!;
    }else if (aqi > 150 && aqi <= 200) {
      return aqiDataList[AqiType.unhealthy]!;
    }else if (aqi > 200 && aqi <= 300) {
      return aqiDataList[AqiType.veryUnhealthy]!;
    }else{
      return aqiDataList[AqiType.hazadous]!;
    }
  }

  //ignore: avoid_build_context_in_providers
  void goInfoScreen(BuildContext context, List<Air> listWeather) {
    context.push('/info' , extra: listWeather);
  }
}
