import 'package:air_buddy/weather_feature/presentation/widget/card/aqi_card.dart';
import 'package:air_buddy/weather_feature/presentation/widget/card/polution_card.dart';
import 'package:air_buddy/weather_feature/presentation/widget/card/weather_card.dart';
import 'package:air_buddy/weather_feature/viewmodel/weather_viewmodel.dart';
import 'package:core/constants/aqi/aqi_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class WeatherCurrentStatus extends ConsumerWidget {
  const WeatherCurrentStatus({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weatherVM = ref.watch(weatherViewModelProvider);
    final weatherVMNotifier = ref.read(weatherViewModelProvider.notifier);

    final AqiData aqiData = weatherVMNotifier.getAqiData(weatherVM.air[0].polution.aqi ?? 0);

    return Column(
      children: [
        WeatherCard(currentAir: weatherVM.air[0],),
        PolutionCard(currentPolution: weatherVM.air[0],),
        AqiCard(aqiData: aqiData, currentAqi: weatherVM.air[0],)
      ],
    );
  }
}
