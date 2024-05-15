import 'package:air_buddy/feature/map/domain/entitys/station.dart';
import 'package:air_buddy/feature/map/domain/entitys/weather.dart';
import 'package:air_buddy/feature/map/domain/port_weather/service.dart';
import 'package:air_buddy/feature/map/presentation/widgets/marker_location.dart';
import 'package:core_libs/dependency_injection/get_it.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late final IWeatherService weatherService = getIt.get<IWeatherService>();
  late final IStationService stationService = getIt.get<IStationService>();
  late WeatherToDisplay weather;
  late StationToDisplay station;

  late double lat = 18.793857473522774;
  late double lng = 98.97889434756851;
  late String name = 'CENDiM CMU';

  @override
  void initState() {
    getWeather(lat, lng);
    getStation();
    super.initState();
  }

  Future<void> getWeather(double lat, double lng) async {
    final weathers = await weatherService.getByLatLng(lat, lng);
    setState(() {
      weather = weathers;
    });
  }

  void getStation() async {
    final stations = await stationService.getStation();
    setState(() {
      station = stations;
    });
  }

  // Function to handle map movement (zoom, rotate, etc.)
  void _handleMapChanged(MapPosition mapPosition, bool hasGesture) {
    // print(mapPosition.bounds?.northEast);
  }

  @override
  Widget build(BuildContext context) {
    late MapController mapController = MapController();

    return Scaffold(
      body: Stack(
        children: [
          FlutterMap(
            mapController: mapController,
            options: MapOptions(
              center: LatLng(18.793857473522774, 98.97889434756851),
              zoom: 14,
              maxZoom: 19,
              minZoom: 10,
              onPositionChanged: _handleMapChanged,
              onTap: (tapPosition, point) async {
                print(point);
                await getWeather(point.latitude, point.longitude);
                // print(station.data.firstOrNull.lat = point.latitude);
                setState(() {
                  lat = point.latitude;
                  lng = point.longitude;
                });
              },
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                subdomains: ['a', 'b', 'c'],
              ),
              TileLayer(
                urlTemplate:
                    'https://tiles.waqi.info/tiles/usepa-aqi/{z}/{x}/{y}.png?token=c446149c4593b2dd221b9d37f1b7612a658f4ccc',
                subdomains: ['a', 'b', 'c'],
              ),
              MarkerLayer(
                markers: [
                  for (int i = 0; i < station.data.length; i++)
                    Marker(
                        point: LatLng(station.data[i].lat!.toDouble(),
                            station.data[i].lng!.toDouble()),
                        child: const Icon(
                          Icons.pin_drop_outlined,
                          color: Colors.blue,
                          size: 30,
                        )),
                ],
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    point: LatLng(lat, lng),
                    child: const Icon(Icons.pin_drop_outlined),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            bottom: 100,
            left: 0,
            right: 0,
            child: Center(
              child: MarkerLocation(name: name),
            ),
          ),
        ],
      ),
    );
  }
}
