import 'package:core/constants/aqi/aqi_data.dart';
import 'package:core/constants/aqi/aqi_type.dart';
import 'package:core_libs/dependency_injection/get_it.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entitys/here_station.dart';
import '../../domain/entitys/station.dart';
import '../../domain/entitys/weather.dart';
import '../../../../infrastructure/port_weather/service.dart';
import 'map_state.dart';

part 'map_viewModel.g.dart';

@riverpod
class MapViewModel extends _$MapViewModel {
  late final IStationService stationService = getIt.get<IStationService>();
  late final IHereStationService hereStationService =
      getIt.get<IHereStationService>();

  @override
  MapState build() => MapState(
        loading: true,
        weather: WeatherToDisplay(),
        hereStationToDisplay: HereStationToDisplay(coordinates: []),
        station: StationToDisplay([]),
        lat: 0,
        lng: 0,
        stationName: '',
        aqi: '',
        popup: true,
      );

  void getHereStation() async {
    state = state.copyWith(
      loading: true,
      popup: false,
    );
    final hereStation = await hereStationService.getHereStation();
    final stations = await stationService.getStation(21.781492109878354,
        95.21399400612671, 5.135168114067062, 112.39991160362918);
    state = state.copyWith(
      hereStationToDisplay: hereStation,
      station: stations,
      lat: hereStation.coordinates![1],
      lng: hereStation.coordinates![0],
      loading: false,
    );
  }

  void getStation(double lat1, double lng1, double lat2, double lng2) async {
    final stations = await stationService.getStation(lat1, lng1, lat2, lng2);
    state = state.copyWith(
      station: stations,
    );
  }

  void setLatLng(double locationLat, double locationLng) {
    state = state.copyWith(
      lat: locationLat,
      lng: locationLng,
    );
  }

  void setMarkerLocationBox(String PstationName, String Paqi) {
    state = state.copyWith(
      stationName: PstationName,
      aqi: Paqi,
    );
  }

  void handleMapChanged(MapPosition mapPosition, bool hasGesture) {

    getStation(
      mapPosition.bounds!.northWest.latitude,
      mapPosition.bounds!.northWest.longitude,
      mapPosition.bounds!.southEast.latitude,
      mapPosition.bounds!.southEast.longitude,
    );
  }

  void switchPopup(){
    state = state.copyWith(
      popup: !state.popup,
    );
  }

  void openPopup(){
    state = state.copyWith(
      popup: true,
    );
  }

    AqiData getAqiData(int aqi) {
    if (aqi > 0 && aqi <= 50) {
      return aqiDataList[AqiType.good]!;
    } else if (aqi > 50 && aqi <= 100) {
      return aqiDataList[AqiType.moderate]!;
    } else if (aqi > 100 && aqi <= 150) {
      return aqiDataList[AqiType.unhealthyForSensitive]!;
    } else if (aqi > 150 && aqi <= 200) {
      return aqiDataList[AqiType.unhealthy]!;
    } else if (aqi > 200 && aqi <= 300) {
      return aqiDataList[AqiType.veryUnhealthy]!;
    } else {
      return aqiDataList[AqiType.hazadous]!;
    }
  }
  
}
