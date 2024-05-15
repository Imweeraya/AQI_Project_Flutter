import 'package:air_buddy/feature/map/domain/entitys/here_station.dart';
import 'package:air_buddy/feature/map/domain/entitys/station.dart';
import 'package:air_buddy/feature/map/domain/entitys/weather.dart';
import 'package:air_buddy/feature/map/domain/port_weather/service.dart';
import 'package:air_buddy/feature/map/presentation/widgets/marker_location.dart';
import 'package:core_libs/dependency_injection/get_it.dart';
import 'package:core_ui/widgets/elements/tests/title_text.dart';
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
  late final IHereStationService hereStationService = getIt.get<IHereStationService>();

  late StationToDisplay station;

  late String name = 'CENDiM CMU';
  late WeatherToDisplay weather = WeatherToDisplay(); // Initialize with some default value
  late HereStationToDisplay hereStationToDisplay;
  late double lat = hereStationToDisplay.coordinates![1];
  late double lng = hereStationToDisplay.coordinates![0];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    getStation();
  }

  Future<void> getWeather(double lat, double lng) async {
    final weathers = await weatherService.getByLatLng(lat, lng);
    setState(() {
      weather = weathers;
    });
  }

  void getStation() async {
    final hereStation = await hereStationService.getHereStation();
    final stations = await stationService.getStation();
    setState(() {
      station = stations;
      hereStationToDisplay = hereStation;
      isLoading = false;
    });
    await getWeather(hereStationToDisplay.coordinates![1], hereStationToDisplay.coordinates![0]);
  }

  // Function to handle map movement (zoom, rotate, etc.)
  void _handleMapChanged(MapPosition mapPosition, bool hasGesture) {
    // print(mapPosition.bounds?.northEast);
  }

  @override
  Widget build(BuildContext context) {
    late MapController mapController = MapController();

    return Scaffold(
      body: isLoading ? const SizedBox(): Stack(
        children: [
          FlutterMap(
            mapController: mapController,
            options: MapOptions(
              center: LatLng(hereStationToDisplay.coordinates![1], hereStationToDisplay.coordinates![0]),
              zoom: 14,
              maxZoom: 16,
              minZoom: 13,
              onPositionChanged: _handleMapChanged,
              onTap: (tapPosition, point) async {
                print(point);
                await getWeather(point.latitude, point.longitude);
                // print(station.data.firstOrNull.lat = point.latitude);
                print(weather.aqi);
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
                markers: station.data.map((e) => Marker(
                  point: LatLng(e.lat!.toDouble(), e.lng!.toDouble()),
                    child: TitleText(title: e.aqi!, textSize: TitleTextSize.SMALL,color: Colors.red,)
                )).toList(),
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    point: LatLng(lat, lng),
                    child: const Icon(Icons.pin_drop_outlined,weight: 100,),
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
              child: MarkerLocation(name: weather.name ?? 'Default Name'),
            ),
          ),
        ],
      ),
    );
  }
}
