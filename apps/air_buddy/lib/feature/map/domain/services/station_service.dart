import 'package:core_libs/dependency_injection/get_it.dart';

import '../entitys/station.dart';
import '../port_weather/repository.dart';
import '../port_weather/service.dart';

class StationService extends IStationService {
  final IStationRepository repository = getIt.get<IStationRepository>();

  @override
  Future<StationToDisplay> getStation() async {
    final rawStation = await repository.getStation();
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
