import 'package:air_buddy/feature/map/presentation/viewmodels/map_viewModel.dart';
import 'package:air_buddy/feature/map/presentation/widgets/marker_location_box.dart';
import 'package:core_ui/widgets/error/error_page.dart';
import 'package:core_ui/widgets/loading/loading_map.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:latlong2/latlong.dart';
import 'package:air_buddy/feature/map/presentation/widgets/marker_location_custom.dart';

import '../widgets/marker_location_custom.dart';

class MapScreen extends ConsumerStatefulWidget {
  const MapScreen({super.key});

  @override
  ConsumerState<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends ConsumerState<MapScreen> {
  @override
  void initState() {
    super.initState();
    Future(() {
      ref.read(mapViewModelProvider.notifier).getHereStation();
    });
  }

  @override
  Widget build(BuildContext context) {
    late MapController mapController = MapController();
    final mapVM = ref.watch(mapViewModelProvider);
    final mapFunctionVM = ref.read(mapViewModelProvider.notifier);

    return Scaffold(
      body: mapVM.loading
          ? const LoadingMap()
          :mapVM.station.data.isEmpty ? ErrorPage(reCallApi: mapFunctionVM.getHereStation)
        :Stack(
              children: [
                FlutterMap(
                  mapController: mapController,
                  options: MapOptions(
                    center: LatLng(mapVM.lat,
                        mapVM.lng),
                    zoom: 14,
                    maxZoom: 16,
                    minZoom: 13,
                    onPositionChanged: (mapPosition, hasGesture) =>
                        mapFunctionVM.handleMapChanged(mapPosition, hasGesture),
                    onTap: (tapPosition, point) async {
                      mapFunctionVM.setLatLng(point.latitude, point.longitude);
                    },
                  ),
                  children: [
                    TileLayer(
                      urlTemplate:
                          'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                      subdomains: ['a', 'b', 'c'],
                    ),
                    MarkerLayer(
                      markers: mapVM.station.data
                          .map((e) => Marker(
                              point:
                                  LatLng(e.lat!.toDouble(), e.lng!.toDouble()),
                              child: MakerLocationCustom(
                                name: e.stationName,
                                aqi: e.aqi,
                              )))
                          .toList(),
                    ),
                    MarkerLayer(
                      markers: [
                        Marker(
                          point: LatLng(mapVM.lat, mapVM.lng),
                          child: const Icon(
                            Icons.pin_drop_rounded,
                            color: Color.fromARGB(255, 51, 60, 131),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                mapVM.popup
                    ? Positioned(
                        bottom: 50,
                        left: 0,
                        right: 0,
                        child: Center(
                          child: MarkerLocationBox(name: mapVM.stationName),
                        ),
                      )
                    : SizedBox(),
              ],
            ),
    );
  }
}
