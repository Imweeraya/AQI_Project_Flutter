import 'package:air_buddy/weather_feature/presentation/elements/icon/iconText.dart';
import 'package:air_buddy/weather_feature/viewmodel/weather_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';

class WeatherCurrentStatus extends ConsumerWidget {
  const WeatherCurrentStatus({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weatherVM = ref.watch(weatherViewModelProvider);
    final weatherVMNotifier = ref.read(weatherViewModelProvider.notifier);

    return Column(
      children: [
        Container(
          height: 500,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 30, 143, 196),
                Color.fromARGB(255, 79, 165, 205),
                Color.fromARGB(255, 160, 189, 204),
                Color.fromARGB(255, 199, 199, 199),
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Lottie.asset(
                      "assets/animation/sunny_cloud_weather.json",
                      width: 200),
                ),
              ),
              Text(
                "${weatherVM.weathers[0].maxTemp.toInt()}°",
                style: TextStyle(fontSize: 60, color: Colors.white),
              ),
              Text(
                "${weatherVM.weathers[0].city}",
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/icon_svg/wind_icon.svg",
                    colorFilter:
                        const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                    width: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "${weatherVM.weathers[0].windSpeed} km./hr",
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 70,
              ),
              Text(
                weatherVMNotifier.formatDate(weatherVM.weathers[0].date),
                style: const TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 70,
          color: Color.fromARGB(255, 232, 232, 232),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconText(
                  svgicon: "assets/icon_svg/uvi_icon.svg",
                  title: "UVI",
                  info: "${weatherVM.weathers[0].avgUvi}"),
              IconText(
                  svgicon: "assets/icon_svg/o3_icon.svg",
                  title: "O3",
                  info: "${weatherVM.weathers[0].avgO3} D.U"),
              IconText(
                  texticon: "PM10",
                  title: "PM10",
                  info: "${weatherVM.weathers[0].avgPm10} µg/m³")
            ],
          ),
        ),
        Container(
          height: 150,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 191, 247, 94),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3), // This gives a shadow below the box
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Icon(
                Icons.emoji_emotions_outlined,
                size: 100,
                color: Color.fromARGB(255, 141, 201, 37),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "AQI",
                    style: TextStyle(
                        fontSize: 18, color: Color.fromARGB(255, 108, 154, 28)),
                  ),
                  Text("${weatherVM.weathers[0].aqi}",
                      style: const TextStyle(
                          fontSize: 36,
                          color: Color.fromARGB(255, 108, 154, 28)))
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Good",
                    style: TextStyle(
                        fontSize: 18, color: Color.fromARGB(255, 108, 154, 28)),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 6, 20, 6),
                      child: Text(
                          "PM2.5 ${weatherVM.weathers[0].avgPm25} µg/m³",
                          style: const TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 108, 154, 28))),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
