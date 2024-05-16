import 'package:air_buddy/weather_feature/domain/entities/air_entity.dart';
import 'package:air_buddy/weather_feature/presentation/widget/card/aqi_card.dart';
import 'package:air_buddy/weather_feature/presentation/widget/card/polution_card.dart';
import 'package:air_buddy/weather_feature/presentation/widget/card/weather_card.dart';
import 'package:air_buddy/weather_feature/viewmodel/weather_viewmodel.dart';
import 'package:core/constants/aqi/aqi_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class WeatherCurrentStatus extends ConsumerWidget {
  const WeatherCurrentStatus({super.key , required this.curentWeather});
  final Air curentWeather;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weatherVMNotifier = ref.read(weatherViewModelProvider.notifier);
    final AqiData aqiData = weatherVMNotifier.getAqiData(curentWeather.polution.aqi ?? 0);

    return Column(
        children: [
          WeatherCard(currentAir: curentWeather,),
          PolutionCard(currentPolution: curentWeather,),
          AqiCard(aqiData: aqiData, currentAqi: curentWeather,)
        ],
      );
  }
}
