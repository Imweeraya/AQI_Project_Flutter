import 'package:air_buddy/weather_feature/domain/entities/air_entity.dart';
import 'package:air_buddy/weather_feature/presentation/widget/forecast.dart';
import 'package:air_buddy/weather_feature/presentation/widget/health_info.dart';
import 'package:air_buddy/weather_feature/presentation/widget/modal_info.dart';
import 'package:air_buddy/weather_feature/presentation/widget/weather_current%20_status.dart';
import 'package:air_buddy/weather_feature/viewmodel/weather_viewmodel.dart';
import 'package:core/constants/aqi/aqi_data.dart';
import 'package:core_ui/widgets/loading/loading_weather.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WeatherInfoScreen extends ConsumerStatefulWidget {
  const WeatherInfoScreen({super.key, required this.weather});
  final List<Air> weather;

  @override
  ConsumerState<WeatherInfoScreen> createState() => _WeatherInfoScreenState();
}

class _WeatherInfoScreenState extends ConsumerState<WeatherInfoScreen> {
  @override
  Widget build(BuildContext context) {
    final weatherVMNotifier = ref.read(weatherViewModelProvider.notifier);
    final weatherVM = ref.watch(weatherViewModelProvider);

    final List<Air> listWeather = widget.weather;

    final AqiData aqiData = weatherVMNotifier
        .getAqiData(listWeather[0].pollution.aqi!.toInt() ?? 0);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Color.fromARGB(255, 132, 132, 132),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return ModalInfo();
                },
              );
            },
            icon: const Icon(
              Icons.info_outlined,
              size: 30,
              color: Color.fromARGB(255, 132, 132, 132),
            ),
          ),
        ],
      ),
      body: weatherVM.loadingInfo
          ? const LoadingWeather()
          : Container(
              color: const Color.fromARGB(255, 246, 246, 246),
              child: ListView(
                children: [
                  InkWell(
                      onTap: () {},
                      child: WeatherCurrentStatus(
                        curentWeather: listWeather[0],
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  ForeCast(
                    forecastList: listWeather,
                  ),
                  HealthInfo(
                    aqiData: aqiData,
                  )
                ],
              ),
            ),
    );
  }
}
