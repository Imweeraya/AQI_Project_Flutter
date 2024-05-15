import 'package:air_buddy/weather_feature/domain/port/service.dart';
import 'package:air_buddy/weather_feature/viewmodel/weather_state.dart';
import 'package:core/constants/aqi_data.dart';
import 'package:core/constants/aqi_type.dart';
import 'package:core_libs/depedency_injection/get_it.dart';
import 'package:intl/intl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'weather_viewmodel.g.dart';

@riverpod
class WeatherViewModel extends _$WeatherViewModel {
  IWeatherService service = getIt.get<IWeatherService>();

  @override
  WeatherState build() => WeatherState(
        loading: false,
        air: [],
      );

  void getWeathers() async {
    state = state.copyWith(loading: true);

    final weathersFetchers = service.getWeatherForecast();
    // final weathers = await Future.wait(weathersFetchers);
    final weatherslist = await Future.value(weathersFetchers);

    state = state.copyWith(
      loading: false,
      air: weatherslist,
    );
  }

  String formatDate(DateTime dateTime) {
    final formatter = DateFormat('dd MMMM yyyy');
    return formatter.format(dateTime);
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

  // ignore: avoid_build_context_in_providers
  // void onSelectProduct(BuildContext context, ProductDisplay product) {
  //   context.push('/detail' , extra: product);
  // }
}
