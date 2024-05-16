import 'package:air_buddy/weather_feature/domain/entities/air_entity.dart';
import 'package:air_buddy/weather_feature/presentation/elements/icon/iconText_small.dart';
import 'package:core/constants/weather/weather_data.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';

class ForeCastCard extends StatelessWidget {
  const ForeCastCard({super.key, required this.forecast});
  final Air forecast;

  @override
  Widget build(BuildContext context) {

    String formatDate(DateTime dateTime) {
      final formatter = DateFormat('dd MMMM');
      return formatter.format(dateTime);
    }

    return Container(
      width: 180,
      height: 410,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        borderRadius: const BorderRadius.all(
          Radius.circular(10.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            width: 180,
            height: 50,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 212, 239, 241),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0)),
            ),
            child: Center(
              child: Text(
                formatDate(forecast.pollution.date!),
                style: const TextStyle(
                    color: Color.fromARGB(255, 84, 84, 84),
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Lottie.asset(weatherIconAssets[forecast.weather.weatherType]! , width: 80),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "${forecast.weather.maxTemp}°",
                        style:
                            const TextStyle(color: Color.fromARGB(255, 255, 76, 63)),
                      ),
                      const Icon(
                        Icons.arrow_drop_up_rounded,
                        color: Color.fromARGB(255, 255, 76, 63),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text("${forecast.weather.minTemp}°"),
                      const Icon(Icons.arrow_drop_down_rounded,
                          color: Color.fromARGB(255, 63, 105, 255))
                    ],
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: 100,
            height: 5,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 130, 130, 130),
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
           Padding(
            padding: const EdgeInsets.only(left: 14),
            child: Column(
              children: [
                IconTextSmall(
                    svgicon: "assets/icon_svg/uvi_icon.svg",
                    title: "UVI",
                    info: "${forecast.pollution.avgUvi}"),
                const SizedBox(
                  height: 15,
                ),
                IconTextSmall(
                    svgicon: "assets/icon_svg/o3_icon.svg",
                    title: "O3",
                    info: "${forecast.pollution.avgO3} D.U"),
                const SizedBox(
                  height: 15,
                ),
                IconTextSmall(
                    svgicon: "assets/icon_svg/wind_icon.svg",
                    title: "windSpeed",
                    info: "${forecast.weather.windSpeed} km./hr"),
                const SizedBox(
                  height: 15,
                ),
                IconTextSmall(
                    texticon: "PM 2.5", title: "PM 2.5", info: "${forecast.pollution.avgPm25} µg/m³"),
                const SizedBox(
                  height: 15,
                ),
                IconTextSmall(texticon: "PM10", title: "PM10", info: "${forecast.pollution.avgPm10} µg/m³")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
