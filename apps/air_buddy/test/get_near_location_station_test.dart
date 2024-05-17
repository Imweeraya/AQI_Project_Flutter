import 'dart:io';

import 'package:air_buddy/feature/map/data/repository/here_station_repository.dart';
import 'package:air_buddy/feature/map/data/repository/station_repository.dart';
import 'package:air_buddy/feature/map/domain/services/here_station_service.dart';
import 'package:air_buddy/feature/map/domain/services/station_service.dart';
import 'package:air_buddy/infrastructure/port_weather/repository.dart';
import 'package:air_buddy/infrastructure/port_weather/service.dart';
import 'package:air_buddy/mock/mock_http_service.dart';
import 'package:core_libs/network/http/http_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';

void main() {
  final getIt = GetIt.instance;
  getIt.registerSingleton<HttpService>(MockHttpService('mock'),instanceName: 'airvisual');
  getIt.registerSingleton<IHereStationRepository>(HereStationRepository());
  getIt.registerSingleton<IHereStationService>(HereStationService());

  test('Test get near station', () async {
    final mockHttpService = getIt.get<HttpService>(instanceName: 'airvisual');
    (mockHttpService as MockHttpService).returnData = {
      "status": "success",
      "data": {
        "city": "Chiang Mai",
        "state": "Chiang Mai",
        "country": "Thailand",
        "location": {
          "type": "Point",
          "coordinates": [98.9640586, 18.816766]
        },
        "current": {
          "pollution": {
            "ts": "2024-05-17T06:00:00.000Z",
            "aqius": 62,
            "mainus": "p2",
            "aqicn": 21,
            "maincn": "p2"
          },
          "weather": {
            "ts": "2024-05-17T06:00:00.000Z",
            "tp": 33,
            "pr": 991,
            "hu": 67,
            "ws": 3.09,
            "wd": 150,
            "ic": "03d"
          }
        }
      }
    };

    final stationHereService = getIt.get<IHereStationService>();
    final stationHere = await stationHereService.getHereStation();

    expect(stationHere.coordinates![0], 98.9640586);
    expect(stationHere.coordinates![1], 18.816766);
  });
}
