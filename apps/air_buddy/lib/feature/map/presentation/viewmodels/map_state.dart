import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entitys/here_station.dart';
import '../../domain/entitys/station.dart';
import '../../domain/entitys/weather.dart';
part 'map_state.freezed.dart';

@freezed
class MapState with _$MapState {
  factory MapState({
    required bool loading,
    required WeatherToDisplay weather,
    required HereStationToDisplay hereStationToDisplay,
    required StationToDisplay station,
    required double lat,
    required double lng,
    required String stationName,
    required String aqi,
    required bool popup,
}) = _Mapstate;
}