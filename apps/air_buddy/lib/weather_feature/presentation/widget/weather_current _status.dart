import 'package:air_buddy/weather_feature/presentation/elements/icon/iconText.dart';
import 'package:air_buddy/weather_feature/viewmodel/weather_viewmodel.dart';
import 'package:core/constants/aqi_data.dart';
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

    final AqiData aqiData = weatherVMNotifier.getAqiData(weatherVM.air[0].polution.aqi ?? 0);

    return Column(
      children: [
        Container(
          height: 500,
          decoration: const BoxDecoration(
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
                "${weatherVM.air[0].weather.maxTemp.toInt()}°",
                style: TextStyle(fontSize: 60, color: Colors.white),
              ),
              Text(
                "${weatherVM.air[0].polution.city}",
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Lottie.asset("assets/animation/wind.json"),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "${weatherVM.air[0].weather.windSpeed} km./hr",
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
                weatherVMNotifier.formatDate(weatherVM.air[0].polution.date),
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
                  info: "${weatherVM.air[0].polution.avgUvi}"),
              IconText(
                  svgicon: "assets/icon_svg/o3_icon.svg",
                  title: "O3",
                  info: "${weatherVM.air[0].polution.avgO3} D.U"),
              IconText(
                  texticon: "PM10",
                  title: "PM10",
                  info: "${weatherVM.air[0].polution.avgPm10} µg/m³")
            ],
          ),
        ),
        Container(
          height: 150,
          decoration: BoxDecoration(
            color: aqiData.backgroundColor,
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
              SvgPicture.asset(aqiData.pathIcon,
                  width: 100,
                  colorFilter: ColorFilter.mode(
                      aqiData.textColor, BlendMode.srcIn)),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "AQI",
                    style: TextStyle(
                        fontSize: 18, color: aqiData.textColor),
                  ),
                  Text("${weatherVM.air[0].polution.aqi}",
                      style: TextStyle(
                          fontSize: 36,
                          color: aqiData.textColor))
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 48,
                    child: Center(
                      child: Text(
                        aqiData.aqiText,
                        style: TextStyle(
                            fontSize: 18,
                            color: aqiData.textColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
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
                          "PM2.5 ${weatherVM.air[0].polution.avgPm25} µg/m³",
                          style: TextStyle(
                              fontSize: 18,
                              color: aqiData.textColor)),
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
