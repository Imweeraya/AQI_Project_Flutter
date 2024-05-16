import 'package:core_libs/dependency_injection/get_it.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entitys/here_station.dart';
import '../../domain/entitys/station.dart';
import '../../domain/entitys/weather.dart';
import '../../domain/port_weather/service.dart';
import 'map_state.dart';

part 'map_viewModel.g.dart';

@riverpod
class MapViewModel extends _$MapViewModel {
  late final IWeatherService weatherService = getIt.get<IWeatherService>();
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
      );

  void getHereStation() async {
    state = state.copyWith(
      loading: true,
    );
    final hereStation = await hereStationService.getHereStation();
    final stations =
        await stationService.getStation(21.781492109878354, 95.21399400612671);
    state = state.copyWith(
      hereStationToDisplay: hereStation,
      station: stations,
      loading: false,
    );
    await getWeather(hereStation.coordinates![1], hereStation.coordinates![0]);
  }

  void getStation(double lat, double lng) async {
    final stations = await stationService.getStation(lat, lng);
    state = state.copyWith(
      station: stations,
    );
  }

  Future<void> getWeather(double lat, double lng) async {
    final weathers = await weatherService.getByLatLng(lat, lng);
    state = state.copyWith(
      weather: weathers,
      stationName: weathers.name!,
      aqi: weathers.aqi.toString(),
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
    if (mapPosition.hasGesture) {
      getStation(mapPosition.bounds!.northWest.latitude, mapPosition.bounds!.northWest.longitude);
    }
  }
}
