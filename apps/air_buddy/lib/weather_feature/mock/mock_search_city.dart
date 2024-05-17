import 'package:air_buddy/weather_feature/domain/entities/air_entity.dart';
import 'package:air_buddy/weather_feature/domain/entities/polution_entity.dart';
import 'package:air_buddy/weather_feature/domain/entities/weather_entity.dart';

List<AirPollution> mockCityData = [
  // Bangkok
 AirPollution(
      avgUvi: 7.5,
      avgO3: 55.0,
      avgPm10: 35.0,
      avgPm25: 20.0,
      aqi: 160,
      date: DateTime.now(),
      city: "Bangkok",
    ),
  
   AirPollution(
      avgUvi: 8.0,
      avgO3: 50.0,
      avgPm10: 28.0,
      avgPm25: 15.0,
      aqi: 250,
      date: DateTime.now(),
      city: "Chiang Mai",
    ),

  AirPollution(
      avgUvi: 7.0,
      avgO3: 58.0,
      avgPm10: 38.0,
      avgPm25: 22.0,
      aqi: 60,
      date: DateTime.now(),
      city: "Phuket",
    ),
  // City 4
  AirPollution(
      avgUvi: 6.5,
      avgO3: 60.0,
      avgPm10: 32.0,
      avgPm25: 18.0,
      aqi: 30,
      date: DateTime.now(),
      city: "Pattaya",
    ),
  // City 5
 AirPollution(
      avgUvi: 7.8,
      avgO3: 52.0,
      avgPm10: 34.0,
      avgPm25: 19.0,
      aqi: 120,
      date: DateTime.now(),
      city: "Krabi",
    ),
  AirPollution(
      avgUvi: 7.2,
      avgO3: 57.0,
      avgPm10: 36.0,
      avgPm25: 21.0,
      aqi: 82,
      date: DateTime.now(),
      city: "Hua Hin",
    ),
  
  
];