
import 'package:flutter/material.dart';

class Weather {
  int weatherType;
  String weatherText;
  double maxTemp;
  double minTemp;
  double avgUvi;
  double avgO3;
  double avgPm10;
  double avgPm25;
  int? aqi;
  DateTime date;
  String city;
  double windDirection;
  double windSpeed;

  Weather({
    required this.weatherType,
    required this.weatherText,
    required this.maxTemp,
    required this.minTemp,
    required this.avgUvi,
    required this.avgO3,
    required this.avgPm10,
    required this.avgPm25,
    this.aqi,
    required this.date,
    required this.city,
    required this.windDirection,
    required this.windSpeed
  });

}
