import 'dart:io';

import 'package:air_buddy/infrastructure/port_weather/repository.dart';
import 'package:air_buddy/infrastructure/port_weather/service.dart';
import 'package:air_buddy/mock/mock_http_service.dart';
import 'package:air_buddy/weather_feature/data/repository/status_weather_repository.dart';
import 'package:air_buddy/weather_feature/domain/service/weather_service.dart';
import 'package:core_libs/network/http/http_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';

void main() {
  final getIt = GetIt.instance;
  getIt.registerSingleton<HttpService>(MockHttpService('mock'),instanceName: 'tmd');
  getIt.registerSingleton<HttpService>(MockHttpService('mock'), instanceName: 'waqi');
  getIt.registerSingleton<IStatusWeatherRepository>(StatusWeatherRepository());
  getIt.registerSingleton<IStatusWeatherService>(StatusWeatherService());

  test('Test get weather by city', () async {
    final statusHttpService = getIt.get<HttpService>(instanceName: 'tmd');
    final cityHttpService = getIt.get<HttpService>(instanceName: 'waqi');
    (cityHttpService as MockHttpService).returnData = {
      "status": "ok",
      "data": {
        "aqi": 50,
        "idx": 5775,
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
          "geo": [18.787747, 98.9931284],
          "name": "Chiang Mai",
          "url": "https://aqicn.org/city/chiang-mai",
          "location": ""
        },
        "dominentpol": "pm25",
        "iaqi": {
          "h": {"v": 70},
          "no2": {"v": 7.5},
          "o3": {"v": 14.6},
          "p": {"v": 1011.5},
          "pm10": {"v": 82},
          "pm25": {"v": 50},
          "r": {"v": 0.7},
          "so2": {"v": 0.6},
          "t": {"v": 29},
          "w": {"v": 1.8}
        },
        "time": {
          "s": "2024-05-17 12:00:00",
          "tz": "+07:00",
          "v": 1715947200,
          "iso": "2024-05-17T12:00:00+07:00"
        },
        "forecast": {
          "daily": {
            "o3": [
              {"avg": 13, "day": "2024-05-15", "max": 54, "min": 1},
              {"avg": 1, "day": "2024-05-16", "max": 2, "min": 1},
              {"avg": 1, "day": "2024-05-17", "max": 3, "min": 1},
              {"avg": 3, "day": "2024-05-18", "max": 25, "min": 1},
              {"avg": 12, "day": "2024-05-19", "max": 52, "min": 1},
              {"avg": 11, "day": "2024-05-20", "max": 81, "min": 1},
              {"avg": 6, "day": "2024-05-21", "max": 33, "min": 1},
              {"avg": 1, "day": "2024-05-22", "max": 1, "min": 1}
            ],
            "pm10": [
              {"avg": 22, "day": "2024-05-15", "max": 28, "min": 19},
              {"avg": 29, "day": "2024-05-16", "max": 51, "min": 19},
              {"avg": 28, "day": "2024-05-17", "max": 45, "min": 19},
              {"avg": 19, "day": "2024-05-18", "max": 19, "min": 19},
              {"avg": 19, "day": "2024-05-19", "max": 19, "min": 19},
              {"avg": 19, "day": "2024-05-20", "max": 19, "min": 19},
              {"avg": 21, "day": "2024-05-21", "max": 27, "min": 19},
              {"avg": 24, "day": "2024-05-22", "max": 28, "min": 19},
              {"avg": 30, "day": "2024-05-23", "max": 36, "min": 19}
            ],
            "pm25": [
              {"avg": 75, "day": "2024-05-15", "max": 89, "min": 68},
              {"avg": 90, "day": "2024-05-16", "max": 151, "min": 68},
              {"avg": 90, "day": "2024-05-17", "max": 134, "min": 68},
              {"avg": 68, "day": "2024-05-18", "max": 68, "min": 68},
              {"avg": 68, "day": "2024-05-19", "max": 68, "min": 68},
              {"avg": 68, "day": "2024-05-20", "max": 68, "min": 68},
              {"avg": 70, "day": "2024-05-21", "max": 78, "min": 68},
              {"avg": 80, "day": "2024-05-22", "max": 89, "min": 68},
              {"avg": 96, "day": "2024-05-23", "max": 110, "min": 68}
            ],
            "uvi": [
              {"avg": 0, "day": "2020-09-25", "max": 0, "min": 0},
              {"avg": 1, "day": "2020-09-26", "max": 9, "min": 0},
              {"avg": 2, "day": "2020-09-27", "max": 9, "min": 0},
              {"avg": 2, "day": "2020-09-28", "max": 10, "min": 0},
              {"avg": 1, "day": "2020-09-29", "max": 10, "min": 0},
              {"avg": 2, "day": "2020-09-30", "max": 9, "min": 0}
            ]
          }
        },
        "debug": {"sync": "2024-05-17T14:11:22+09:00"}
      }
    };
    (statusHttpService as MockHttpService).returnData = [
      {
        "weatherForecast7Day": {
          "provinceId": 2,
          "regionId": null,
          "maxTemperature": 38.0,
          "minTemperature": 28.0,
          "rainArea": 40,
          "windDirectionImagePath": "/icons/wind-direction/wind-direction_SW.svg",
          "windDirection": 230,
          "windSpeed": 5,
          "weatherType": 4,
          "description": "Updated by user",
          "descriptionEN": null,
          "recordTime": "2024-05-17T00:00:00",
          "name": null,
          "nameEN": null,
          "weatherTypeText": "Heavy Rain",
          "rainAreaText": "Rain 40% of area",
          "weatherTypeImagePath": "/icons/icon-forecast/12.svg",
          "waveType": null,
          "waveTypeText": null,
          "waveTypeImage": null,
          "temperatureType": 0,
          "temperatureTypeText": "Normal",
          "temperatureTypeImage": "",
          "mainWeatherTypeText": null,
          "id": 523025,
          "creationTime": "2024-05-09T23:00:39.1324179",
          "creatorId": "preecha.j",
          "lastModificationTime": "2024-05-16T23:42:40.7279244",
          "lastModifierId": "preecha.j",
          "isDeleted": false,
          "deleterId": null,
          "deletionTime": null
        },
        "province": {
          "name": "เชียงใหม่",
          "geoCode": "TH-50",
          "region": 1,
          "latitude": null,
          "longitude": null,
          "nameEN": "Chiang Mai",
          "id": 2,
          "creationTime": null,
          "creatorId": null,
          "lastModificationTime": null,
          "lastModifierId": null,
          "isDeleted": null,
          "deleterId": null,
          "deletionTime": null
        }
      },
      {
        "weatherForecast7Day": {
          "provinceId": 2,
          "regionId": null,
          "maxTemperature": 38.0,
          "minTemperature": 28.0,
          "rainArea": 40,
          "windDirectionImagePath": "/icons/wind-direction/wind-direction_SW.svg",
          "windDirection": 230,
          "windSpeed": 5,
          "weatherType": 4,
          "description": "Updated by user",
          "descriptionEN": null,
          "recordTime": "2024-05-18T00:00:00",
          "name": null,
          "nameEN": null,
          "weatherTypeText": "Heavy Rain",
          "rainAreaText": "Rain 40% of area",
          "weatherTypeImagePath": "/icons/icon-forecast/12.svg",
          "waveType": null,
          "waveTypeText": null,
          "waveTypeImage": null,
          "temperatureType": 0,
          "temperatureTypeText": "Normal",
          "temperatureTypeImage": "",
          "mainWeatherTypeText": null,
          "id": 523131,
          "creationTime": "2024-05-10T22:51:45.7602334",
          "creatorId": "preecha.j",
          "lastModificationTime": "2024-05-16T23:42:40.9146444",
          "lastModifierId": "preecha.j",
          "isDeleted": false,
          "deleterId": null,
          "deletionTime": null
        },
        "province": {
          "name": "เชียงใหม่",
          "geoCode": "TH-50",
          "region": 1,
          "latitude": null,
          "longitude": null,
          "nameEN": "Chiang Mai",
          "id": 2,
          "creationTime": null,
          "creatorId": null,
          "lastModificationTime": null,
          "lastModifierId": null,
          "isDeleted": null,
          "deleterId": null,
          "deletionTime": null
        }
      },
      {
        "weatherForecast7Day": {
          "provinceId": 2,
          "regionId": null,
          "maxTemperature": 38.0,
          "minTemperature": 27.0,
          "rainArea": 60,
          "windDirectionImagePath": "/icons/wind-direction/wind-direction_SW.svg",
          "windDirection": 230,
          "windSpeed": 5,
          "weatherType": 4,
          "description": "Updated by user",
          "descriptionEN": null,
          "recordTime": "2024-05-19T00:00:00",
          "name": null,
          "nameEN": null,
          "weatherTypeText": "Heavy Rain",
          "rainAreaText": "Rain 60% of area",
          "weatherTypeImagePath": "/icons/icon-forecast/12.svg",
          "waveType": null,
          "waveTypeText": null,
          "waveTypeImage": null,
          "temperatureType": 0,
          "temperatureTypeText": "Normal",
          "temperatureTypeImage": "",
          "mainWeatherTypeText": null,
          "id": 523197,
          "creationTime": "2024-05-11T23:06:10.1112159",
          "creatorId": "preecha.j",
          "lastModificationTime": "2024-05-16T23:42:41.0332719",
          "lastModifierId": "preecha.j",
          "isDeleted": false,
          "deleterId": null,
          "deletionTime": null
        },
        "province": {
          "name": "เชียงใหม่",
          "geoCode": "TH-50",
          "region": 1,
          "latitude": null,
          "longitude": null,
          "nameEN": "Chiang Mai",
          "id": 2,
          "creationTime": null,
          "creatorId": null,
          "lastModificationTime": null,
          "lastModifierId": null,
          "isDeleted": null,
          "deleterId": null,
          "deletionTime": null
        }
      },
      {
        "weatherForecast7Day": {
          "provinceId": 2,
          "regionId": null,
          "maxTemperature": 36.0,
          "minTemperature": 27.0,
          "rainArea": 60,
          "windDirectionImagePath": "/icons/wind-direction/wind-direction_SW.svg",
          "windDirection": 230,
          "windSpeed": 5,
          "weatherType": 4,
          "description": "Updated by user",
          "descriptionEN": null,
          "recordTime": "2024-05-20T00:00:00",
          "name": null,
          "nameEN": null,
          "weatherTypeText": "Heavy Rain",
          "rainAreaText": "Rain 60% of area",
          "weatherTypeImagePath": "/icons/icon-forecast/12.svg",
          "waveType": null,
          "waveTypeText": null,
          "waveTypeImage": null,
          "temperatureType": 0,
          "temperatureTypeText": "Normal",
          "temperatureTypeImage": "",
          "mainWeatherTypeText": null,
          "id": 523291,
          "creationTime": "2024-05-12T22:51:15.9630088",
          "creatorId": "preecha.j",
          "lastModificationTime": "2024-05-16T23:42:41.2357613",
          "lastModifierId": "preecha.j",
          "isDeleted": false,
          "deleterId": null,
          "deletionTime": null
        },
        "province": {
          "name": "เชียงใหม่",
          "geoCode": "TH-50",
          "region": 1,
          "latitude": null,
          "longitude": null,
          "nameEN": "Chiang Mai",
          "id": 2,
          "creationTime": null,
          "creatorId": null,
          "lastModificationTime": null,
          "lastModifierId": null,
          "isDeleted": null,
          "deleterId": null,
          "deletionTime": null
        }
      },
      {
        "weatherForecast7Day": {
          "provinceId": 2,
          "regionId": null,
          "maxTemperature": 35.0,
          "minTemperature": 27.0,
          "rainArea": 60,
          "windDirectionImagePath": "/icons/wind-direction/wind-direction_S.svg",
          "windDirection": 180,
          "windSpeed": 5,
          "weatherType": 4,
          "description": "Updated by user",
          "descriptionEN": null,
          "recordTime": "2024-05-21T00:00:00",
          "name": null,
          "nameEN": null,
          "weatherTypeText": "Heavy Rain",
          "rainAreaText": "Rain 60% of area",
          "weatherTypeImagePath": "/icons/icon-forecast/12.svg",
          "waveType": null,
          "waveTypeText": null,
          "waveTypeImage": null,
          "temperatureType": 0,
          "temperatureTypeText": "Normal",
          "temperatureTypeImage": "",
          "mainWeatherTypeText": null,
          "id": 523385,
          "creationTime": "2024-05-13T23:06:21.7218463",
          "creatorId": "preecha.j",
          "lastModificationTime": "2024-05-16T23:42:41.4417534",
          "lastModifierId": "preecha.j",
          "isDeleted": false,
          "deleterId": null,
          "deletionTime": null
        },
        "province": {
          "name": "เชียงใหม่",
          "geoCode": "TH-50",
          "region": 1,
          "latitude": null,
          "longitude": null,
          "nameEN": "Chiang Mai",
          "id": 2,
          "creationTime": null,
          "creatorId": null,
          "lastModificationTime": null,
          "lastModifierId": null,
          "isDeleted": null,
          "deleterId": null,
          "deletionTime": null
        }
      },
      {
        "weatherForecast7Day": {
          "provinceId": 2,
          "regionId": null,
          "maxTemperature": 35.0,
          "minTemperature": 26.0,
          "rainArea": 70,
          "windDirectionImagePath": "/icons/wind-direction/wind-direction_S.svg",
          "windDirection": 180,
          "windSpeed": 5,
          "weatherType": 4,
          "description": "Updated by user",
          "descriptionEN": null,
          "recordTime": "2024-05-22T00:00:00",
          "name": null,
          "nameEN": null,
          "weatherTypeText": "Heavy Rain",
          "rainAreaText": "Rain 70% of area",
          "weatherTypeImagePath": "/icons/icon-forecast/12.svg",
          "waveType": null,
          "waveTypeText": null,
          "waveTypeImage": null,
          "temperatureType": 0,
          "temperatureTypeText": "Normal",
          "temperatureTypeImage": "",
          "mainWeatherTypeText": null,
          "id": 523440,
          "creationTime": "2024-05-14T22:51:24.2624065",
          "creatorId": "preecha.j",
          "lastModificationTime": "2024-05-16T23:42:41.6348762",
          "lastModifierId": "preecha.j",
          "isDeleted": false,
          "deleterId": null,
          "deletionTime": null
        },
        "province": {
          "name": "เชียงใหม่",
          "geoCode": "TH-50",
          "region": 1,
          "latitude": null,
          "longitude": null,
          "nameEN": "Chiang Mai",
          "id": 2,
          "creationTime": null,
          "creatorId": null,
          "lastModificationTime": null,
          "lastModifierId": null,
          "isDeleted": null,
          "deleterId": null,
          "deletionTime": null
        }
      },
      {
        "weatherForecast7Day": {
          "provinceId": 2,
          "regionId": null,
          "maxTemperature": 34.0,
          "minTemperature": 26.0,
          "rainArea": 70,
          "windDirectionImagePath": "/icons/wind-direction/wind-direction_S.svg",
          "windDirection": 180,
          "windSpeed": 5,
          "weatherType": 4,
          "description": "Updated by user",
          "descriptionEN": null,
          "recordTime": "2024-05-23T00:00:00",
          "name": null,
          "nameEN": null,
          "weatherTypeText": "Heavy Rain",
          "rainAreaText": "Rain 70% of area",
          "weatherTypeImagePath": "/icons/icon-forecast/12.svg",
          "waveType": null,
          "waveTypeText": null,
          "waveTypeImage": null,
          "temperatureType": 0,
          "temperatureTypeText": "Normal",
          "temperatureTypeImage": "",
          "mainWeatherTypeText": null,
          "id": 523542,
          "creationTime": "2024-05-15T22:59:57.2020054",
          "creatorId": "preecha.j",
          "lastModificationTime": "2024-05-16T23:42:41.8246008",
          "lastModifierId": "preecha.j",
          "isDeleted": false,
          "deleterId": null,
          "deletionTime": null
        },
        "province": {
          "name": "เชียงใหม่",
          "geoCode": "TH-50",
          "region": 1,
          "latitude": null,
          "longitude": null,
          "nameEN": "Chiang Mai",
          "id": 2,
          "creationTime": null,
          "creatorId": null,
          "lastModificationTime": null,
          "lastModifierId": null,
          "isDeleted": null,
          "deleterId": null,
          "deletionTime": null
        }
      }
    ];

    final weatherCityService = getIt.get<IStatusWeatherService>();
    final weather = await weatherCityService.getWeatherForecast('Chiang Mai');

    expect(weather[0].pollution.aqi, 50);
    expect(weather[0].pollution.avgUvi, 0);
    expect(weather[0].weather.maxTemp, 38.0);
    expect(weather[0].weather.minTemp, 28.0);
  });
}
