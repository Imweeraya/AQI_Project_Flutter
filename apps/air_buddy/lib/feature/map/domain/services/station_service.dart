import 'package:core_libs/dependency_injection/get_it.dart';

import '../../../../infrastructure/port_weather/repository.dart';
import '../entitys/station.dart';
import '../../../../infrastructure/port_weather/service.dart';

class StationService extends IStationService {
  final IStationRepository repository = getIt.get<IStationRepository>();

  @override
  Future<StationToDisplay> getStation(double lat1,double lng1,double lat2,double lng2) async {
    final rawStation = await repository.getStation(lat1,lng1,lat2,lng2);
    final List<StationData> stationDataList = [];
    if (rawStation.data != null) {
      for (final rawStationData in rawStation.data!) {
        stationDataList.add(
          StationData(
            lat: rawStationData.lat,
            lng: rawStationData.lon,
            aqi: rawStationData.aqi,
            stationName: rawStationData.station?.name,
          ),
        );
      }
    }
    final stationToDisplay = StationToDisplay(stationDataList);
    return stationToDisplay;
  }
}
