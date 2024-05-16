// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'dart:io';

import 'package:air_buddy/feature/map/data/repository/weather_repository.dart';
import 'package:air_buddy/infrastructure/port_weather/repository.dart';
import 'package:air_buddy/infrastructure/port_weather/service.dart';
import 'package:air_buddy/feature/map/domain/services/weather_service.dart';
import 'package:air_buddy/mock/mock_http_service.dart';
import 'package:core_libs/network/http/http_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';

void main() {
  final getIt = GetIt.instance;
  getIt.registerSingleton<HttpService>(MockHttpService('mock'), instanceName: 'waqi');
  getIt.registerSingleton<IWeatherRepository>(WeatherRepository());
  getIt.registerSingleton<IWeatherService>(WeatherService());

  test('Test get weather by lat lng', () async {
    final mockHttpService = getIt.get<HttpService>(instanceName: 'waqi');
    (mockHttpService as MockHttpService).returnData =
      {
        "status": "ok",
        "data": {
          "aqi": 72,
          "idx": 6817,
          "attributions": [
            {
              "url": "http://aqmthai.com/",
              "name":
                  "Division of Air Quality Data, Air Quality and Noise Management Bureau, Pollution Control Department.",
              "logo": "Thailand-PCD.png"
            },
            {
              "url": "https://waqi.info/",
              "name": "World Air Quality Index Project"
            }
          ],
          "city": {
            "geo": [18.840732, 98.96978],
            "name": "City Hall, Chiangmai, Thailand (ศาลากลางเชียงใหม่)",
            "url": "https://aqicn.org/city/thailand/chiangmai/city-hall",
            "location": ""
          },
          "dominentpol": "pm25",
          "iaqi": {
            "dew": {"v": -4},
            "h": {"v": 6.7},
            "no2": {"v": 7.5},
            "o3": {"v": 14.6},
            "p": {"v": 969.5},
            "pm10": {"v": 91},
            "pm25": {"v": 72},
            "r": {"v": 0.6},
            "so2": {"v": 0.6},
            "t": {"v": 38.5},
            "w": {"v": 1.5}
          },
          "time": {
            "s": "2024-05-14 15:00:00",
            "tz": "+07:00",
            "v": 1715698800,
            "iso": "2024-05-14T15:00:00+07:00"
          },
          "forecast": {
            "daily": {
              "o3": [
                {"avg": 14, "day": "2024-05-12", "max": 37, "min": 2},
                {"avg": 14, "day": "2024-05-13", "max": 55, "min": 1},
                {"avg": 15, "day": "2024-05-14", "max": 48, "min": 1},
                {"avg": 11, "day": "2024-05-15", "max": 51, "min": 1},
                {"avg": 11, "day": "2024-05-16", "max": 46, "min": 1},
                {"avg": 2, "day": "2024-05-17", "max": 6, "min": 1},
                {"avg": 4, "day": "2024-05-18", "max": 14, "min": 1},
                {"avg": 1, "day": "2024-05-19", "max": 1, "min": 1}
              ],
              "pm10": [
                {"avg": 19, "day": "2024-05-12", "max": 19, "min": 19},
                {"avg": 19, "day": "2024-05-13", "max": 19, "min": 19},
                {"avg": 19, "day": "2024-05-14", "max": 26, "min": 19},
                {"avg": 23, "day": "2024-05-15", "max": 28, "min": 19},
                {"avg": 28, "day": "2024-05-16", "max": 46, "min": 19},
                {"avg": 35, "day": "2024-05-17", "max": 55, "min": 19},
                {"avg": 27, "day": "2024-05-18", "max": 41, "min": 19},
                {"avg": 19, "day": "2024-05-19", "max": 19, "min": 17},
                {"avg": 19, "day": "2024-05-20", "max": 19, "min": 19}
              ],
              "pm25": [
                {"avg": 68, "day": "2024-05-12", "max": 68, "min": 68},
                {"avg": 68, "day": "2024-05-13", "max": 68, "min": 68},
                {"avg": 68, "day": "2024-05-14", "max": 83, "min": 68},
                {"avg": 73, "day": "2024-05-15", "max": 88, "min": 68},
                {"avg": 87, "day": "2024-05-16", "max": 138, "min": 68},
                {"avg": 107, "day": "2024-05-17", "max": 156, "min": 68},
                {"avg": 85, "day": "2024-05-18", "max": 124, "min": 66},
                {"avg": 67, "day": "2024-05-19", "max": 68, "min": 42},
                {"avg": 67, "day": "2024-05-20", "max": 68, "min": 66}
              ]
            }
          },
          "debug": {"sync": "2024-05-14T17:17:12+09:00"}
        }
      };

    final weatherService = getIt.get<IWeatherService>();
    final weather = await weatherService.getByLatLng(18.8282025442452,98.97580122436332);

    expect(weather, isNotEmpty);
    expect(weather.aqi, 72);
  });
}
