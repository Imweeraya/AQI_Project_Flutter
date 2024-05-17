import 'dart:io';

import 'package:air_buddy/feature/map/data/repository/station_repository.dart';
import 'package:air_buddy/feature/map/domain/services/station_service.dart';
import 'package:air_buddy/infrastructure/port_weather/repository.dart';
import 'package:air_buddy/infrastructure/port_weather/service.dart';
import 'package:air_buddy/mock/mock_http_service.dart';
import 'package:core_libs/network/http/http_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';

void main() {
  final getIt = GetIt.instance;
  getIt.registerSingleton<HttpService>(MockHttpService('mock'), instanceName: 'waqi');
  getIt.registerSingleton<IStationRepository>(StationRepository());
  getIt.registerSingleton<IStationService>(StationService());

  test('Test get station', () async {
    final mockHttpService = getIt.get<HttpService>(instanceName: 'waqi');
    (mockHttpService as MockHttpService).returnData ={
      "status": "ok",
      "data": [
        {
          "lat": 18.789457382335144,
          "lon": 98.97584487940713,
          "uid": -246676,
          "aqi": "46",
          "station": {
            "name": "อาคาร3 ชั้น6 คณะเทคนิคการแพทย์ มหาวิทยาลัยเชียงใหม่ จ.เชียงใหม่ ",
            "time": "2024-05-17T14:00:00+09:00"
          }
        },
        {
          "lat": 18.78813359300625,
          "lon": 98.98596912525548,
          "uid": -478357,
          "aqi": "78",
          "station": {
            "name": "จุดบริการตำรวจท่องเทียว ต.ศรีภูมิ จ.เชียงใหม่",
            "time": "2024-05-17T14:00:00+09:00"
          }
        },
        {
          "lat": 18.7909333,
          "lon": 98.99,
          "uid": 1822,
          "aqi": "50",
          "station": {
            "name": "Yupparaj Wittayalai School, Chiangmai, Thailand (โรงเรียนยุพราชวิทยาลัย)",
            "time": "2024-05-17T14:00:00+09:00"
          }
        },
        {
          "lat": 18.787747,
          "lon": 98.9931284,
          "uid": 5775,
          "aqi": "50",
          "station": {
            "name": "Chiang Mai",
            "time": "2024-05-17T14:00:00+09:00"
          }
        },
        {
          "lat": 18.7828996,
          "lon": 98.9933469,
          "uid": -2227,
          "aqi": "54",
          "station": {
            "name": "Bear Hug Cafe‚ ต.ช้างคลาน อ.เมือง จ.เชียงใหม่",
            "time": "2024-05-17T14:00:00+09:00"
          }
        }
      ]
    };

    final stationService = getIt.get<IStationService>();
    final station = await stationService.getStation(18.79696931100911,98.97571362530277,18.780769333603544,98.99440647688579);

    expect(station.data[0].aqi, '46');
    expect(station.data[0].stationName, 'อาคาร3 ชั้น6 คณะเทคนิคการแพทย์ มหาวิทยาลัยเชียงใหม่ จ.เชียงใหม่ ');
    expect(station.data[1].aqi, '78');
    expect(station.data[1].stationName, 'จุดบริการตำรวจท่องเทียว ต.ศรีภูมิ จ.เชียงใหม่');
  });
}
