import 'package:core_libs/dependency_injection/get_it.dart';

import '../entitys/station.dart';
import '../port_weather/repository.dart';
import '../port_weather/service.dart';

class StationService extends IStationService {
  final IStationRepository repository = getIt.get<IStationRepository>();

  @override
  Future<StationToDisplay> getStation() async {
    // Fetch raw station data from repository
    final rawStation = await repository.getStation();

    // Process raw data to create StationToDisplay object
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
