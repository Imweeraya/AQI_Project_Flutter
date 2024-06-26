import 'package:air_buddy/weather_feature/domain/entities/air_entity.dart';
import 'package:core/constants/weather/weather_data.dart';
import 'package:core_ui/widgets/elements/tests/normal_text.dart';
import 'package:core_ui/widgets/elements/tests/title_text.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';

class WeatherCard extends StatelessWidget {
  const WeatherCard({super.key, required this.currentAir});

  final Air currentAir;

  String formatDate(DateTime dateTime) {
    final formatter = DateFormat('dd MMMM yyyy');
    return formatter.format(dateTime);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  weatherAnimateAssets[currentAir.weather.weatherType]!,
                  width: 200),
            ),
          ),
          TitleText(
              title: "${(currentAir.weather.maxTemp! + currentAir.weather.minTemp!)~/2}°",
              textSize: TitleTextSize.EXTRA,
              color: Colors.white),
          TitleText(
              title: "${currentAir.pollution.city}",
              textAlign: TextAlign.center,
              textSize: TitleTextSize.SMALL,
              maxLine: 1,
              color: Colors.white,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset("assets/animation/wind.json"),
              const SizedBox(
                width: 10,
              ),
              NormalText(
                title: "${currentAir.weather.windSpeed ?? "-"} km./hr",
                textSize: TextSize.BIG,
                color: Colors.white,
              ),
            ],
          ),
          const SizedBox(
            height: 70,
          ),
          TitleText(
              title: formatDate(currentAir.pollution.date!),
              textSize: TitleTextSize.SMALL,
              color: Colors.white),
        ],
      ),
    );
  }
}
