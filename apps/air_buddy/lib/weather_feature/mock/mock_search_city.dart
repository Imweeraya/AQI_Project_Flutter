import 'package:air_buddy/weather_feature/domain/entities/air_entity.dart';
import 'package:air_buddy/weather_feature/domain/entities/polution_entity.dart';
import 'package:air_buddy/weather_feature/domain/entities/weather_entity.dart';

List<Air> mockCityData = [
  // Bangkok
  Air(
    weather: Weather(
      weatherType: 1,
      weatherText: "Sunny",
      maxTemp: 32.0,
      minTemp: 24.0,
      windDirection: 180.0,
      windSpeed: 10.0,
    ),
    polution: Polution(
      avgUvi: 7.5,
      avgO3: 55.0,
      avgPm10: 35.0,
      avgPm25: 20.0,
      aqi: 160,
      date: DateTime.now(),
      city: "Bangkok",
    ),
  ),
  // Chiang Mai
  Air(
    weather: Weather(
      weatherType: 1,
      weatherText: "Sunny",
      maxTemp: 34.0,
      minTemp: 22.0,
      windDirection: 210.0,
      windSpeed: 8.0,
    ),
    polution: Polution(
      avgUvi: 8.0,
      avgO3: 50.0,
      avgPm10: 28.0,
      avgPm25: 15.0,
      aqi: 250,
      date: DateTime.now(),
      city: "Chiang Mai",
    ),
  ),
  // Add more cities...
  // City 3
  Air(
    weather: Weather(
      weatherType: 2,
      weatherText: "Partly Cloudy",
      maxTemp: 30.0,
      minTemp: 25.0,
      windDirection: 160.0,
      windSpeed: 12.0,
    ),
    polution: Polution(
      avgUvi: 7.0,
      avgO3: 58.0,
      avgPm10: 38.0,
      avgPm25: 22.0,
      aqi: 60,
      date: DateTime.now(),
      city: "Phuket",
    ),
  ),
  // City 4
  Air(
    weather: Weather(
      weatherType: 3,
      weatherText: "Cloudy",
      maxTemp: 28.0,
      minTemp: 23.0,
      windDirection: 220.0,
      windSpeed: 14.0,
    ),
    polution: Polution(
      avgUvi: 6.5,
      avgO3: 60.0,
      avgPm10: 32.0,
      avgPm25: 18.0,
      aqi: 30,
      date: DateTime.now(),
      city: "Pattaya",
    ),
  ),
  // City 5
  Air(
    weather: Weather(
      weatherType: 1,
      weatherText: "Sunny",
      maxTemp: 33.0,
      minTemp: 26.0,
      windDirection: 180.0,
      windSpeed: 11.0,
    ),
    polution: Polution(
      avgUvi: 7.8,
      avgO3: 52.0,
      avgPm10: 34.0,
      avgPm25: 19.0,
      aqi: 120,
      date: DateTime.now(),
      city: "Krabi",
    ),
  ),
  // City 6
  Air(
    weather: Weather(
      weatherType: 2,
      weatherText: "Partly Cloudy",
      maxTemp: 32.0,
      minTemp: 27.0,
      windDirection: 200.0,
      windSpeed: 13.0,
    ),
    polution: Polution(
      avgUvi: 7.2,
      avgO3: 57.0,
      avgPm10: 36.0,
      avgPm25: 21.0,
      aqi: 82,
      date: DateTime.now(),
      city: "Hua Hin",
    ),
  ),
  
];