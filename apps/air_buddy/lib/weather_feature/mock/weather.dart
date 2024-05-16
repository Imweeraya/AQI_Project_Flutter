import 'package:air_buddy/weather_feature/domain/entities/air_entity.dart';
import 'package:air_buddy/weather_feature/domain/entities/polution_entity.dart';
import 'package:air_buddy/weather_feature/domain/entities/weather_entity.dart';


List<Air> mockAirData = [
  Air(
    weather: Weather(
      weatherType: 1,
      weatherText: "Sunny",
      maxTemp: 30.0,
      minTemp: 24.0,
      windDirection: 120.0,
      windSpeed: 12.0,
    ),
    polution: Polution(
      avgUvi: 10.0,
      avgO3: 56.0,
      avgPm10: 34.0,
      avgPm25: 17.0,
      aqi: 30,
      date: DateTime.now(),
      city: "ChiangMai",
    ),
  ),
  Air(
    weather: Weather(
      weatherType: 1,
      weatherText: "Sunny",
      maxTemp: 30.0,
      minTemp: 20.0,
      windDirection: 180.0,
      windSpeed: 10.0,
    ),
    polution: Polution(
      avgUvi: 8.0,
      avgO3: 50.0,
      avgPm10: 25.0,
      avgPm25: 15.0,
      aqi: 70,
      date: DateTime.now().add(Duration(days: 1)),
      city: "ChiangMai",
    ),
  ),
  Air(
    weather: Weather(
      weatherType: 2,
      weatherText: "Partly Cloudy",
      maxTemp: 28.0,
      minTemp: 18.0,
      windDirection: 200.0,
      windSpeed: 12.0,
    ),
    polution: Polution(
      avgUvi: 7.5,
      avgO3: 55.0,
      avgPm10: 22.0,
      avgPm25: 13.0,
      aqi: 65,
      date: DateTime.now().add(Duration(days: 2)),
      city: "ChiangMai",
    ),
  ),
  Air(
    weather: Weather(
      weatherType: 3,
      weatherText: "Cloudy",
      maxTemp: 25.0,
      minTemp: 17.0,
      windDirection: 220.0,
      windSpeed: 15.0,
    ),
    polution: Polution(
      avgUvi: 7.0,
      avgO3: 60.0,
      avgPm10: 20.0,
      avgPm25: 10.0,
      aqi: 60,
      date: DateTime.now().add(Duration(days: 3)),
      city: "ChiangMai",
    ),
  ),
  Air(
    weather: Weather(
      weatherType: 1,
      weatherText: "Sunny",
      maxTemp: 29.0,
      minTemp: 21.0,
      windDirection: 180.0,
      windSpeed: 10.0,
    ),
    polution: Polution(
      avgUvi: 8.5,
      avgO3: 45.0,
      avgPm10: 27.0,
      avgPm25: 16.0,
      aqi: 75,
      date: DateTime.now().add(Duration(days: 4)),
      city: "ChiangMai",
    ),
  ),
  Air(
    weather: Weather(
      weatherType: 2,
      weatherText: "Partly Cloudy",
      maxTemp: 27.0,
      minTemp: 19.0,
      windDirection: 190.0,
      windSpeed: 11.0,
    ),
    polution: Polution(
      avgUvi: 7.0,
      avgO3: 50.0,
      avgPm10: 23.0,
      avgPm25: 12.0,
      aqi: 70,
      date: DateTime.now().add(Duration(days: 5)),
      city: "ChiangMai",
    ),
  ),
  Air(
    weather: Weather(
      weatherType: 3,
      weatherText: "Cloudy",
      maxTemp: 26.0,
      minTemp: 18.0,
      windDirection: 210.0,
      windSpeed: 14.0,
    ),
    polution: Polution(
      avgUvi: 6.5,
      avgO3: 55.0,
      avgPm10: 21.0,
      avgPm25: 11.0,
      aqi: 65,
      date: DateTime.now().add(Duration(days: 6)),
      city: "ChiangMai",
    ),
  ),
  Air(
    weather: Weather(
      weatherType: 1,
      weatherText: "Sunny",
      maxTemp: 28.0,
      minTemp: 20.0,
      windDirection: 180.0,
      windSpeed: 10.0,
    ),
    polution: Polution(
      avgUvi: 8.0,
      avgO3: 52.0,
      avgPm10: 24.0,
      avgPm25: 14.0,
      aqi: 68,
      date: DateTime.now().add(Duration(days: 7)),
      city: "ChiangMai",
    ),
  ),
];


