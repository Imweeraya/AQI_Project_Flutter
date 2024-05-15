import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  // Variables to store current map bounds
  late LatLngBounds? _currentBounds;
  late double lat = 18.793857473522774;
  late double lng = 98.97889434756851;

  // Function to handle map movement (zoom, rotate, etc.)
  void _handleMapChanged(MapPosition mapPosition, bool hasGesture) {
    setState(() {
      _currentBounds = mapPosition.bounds;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(
              center: LatLng(18.793857473522774, 98.97889434756851),
              zoom: 13,
              maxZoom: 19,
              onPositionChanged: _handleMapChanged,
              onTap: (tapPosition, point) {
                print(point);
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
              ),
               MarkerLayer(
                markers: [
                  Marker(
                    point: LatLng(lat, lng),
                    width: 30,
                    height: 30,
                    child: FlutterLogo(),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
