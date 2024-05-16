import 'package:air_buddy/weather_feature/domain/entities/air_entity.dart';
import 'package:core/constants/weather/weather_data.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';

class WeatherCard extends StatelessWidget {
  const WeatherCard({super.key , required this.currentAir});

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
              Text(
                "${currentAir.weather.maxTemp?.toInt()}°",
                style: TextStyle(fontSize: 60, color: Colors.white),
              ),
              Text(
                "${currentAir.pollution.city}",
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
                    "${currentAir.weather.windSpeed} km./hr",
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
                formatDate(currentAir.pollution.date!),
                style: const TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        );
  }
}