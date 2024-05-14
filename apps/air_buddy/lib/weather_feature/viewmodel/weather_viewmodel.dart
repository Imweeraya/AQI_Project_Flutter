import 'package:air_buddy/weather_feature/domain/port/service.dart';
import 'package:air_buddy/weather_feature/viewmodel/weather_state.dart';
import 'package:core_libs/depedency_injection/get_it.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'weather_viewmodel.g.dart';

@riverpod
class WeatherViewModel extends _$WeatherViewModel {

  IWeatherService service = getIt.get<IWeatherService>();
  
  @override
  WeatherState build() => WeatherState(
    loading: false,
    weathers: [],
  );

  void getWeathers() async {

    state = state.copyWith(
      loading: true
    );


    final weathersFetchers = service.getWeatherForecast();
    // final weathers = await Future.wait(weathersFetchers);
    final weatherslist = await Future.value(weathersFetchers);

    state = state.copyWith(
      loading: false,
      weathers: weatherslist,
    );
  }

  // ignore: avoid_build_context_in_providers
  // void onSelectProduct(BuildContext context, ProductDisplay product) {
  //   context.push('/detail' , extra: product);
  // }

}