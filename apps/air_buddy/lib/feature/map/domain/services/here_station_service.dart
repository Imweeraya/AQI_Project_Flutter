import 'package:air_buddy/feature/map/domain/entitys/here_station.dart';
import 'package:air_buddy/feature/map/domain/port_weather/repository.dart';
import 'package:core_libs/dependency_injection/get_it.dart';

import '../port_weather/service.dart';

class HereStationService extends IHereStationService {
  final IHereStationRepository repository = getIt.get<IHereStationRepository>();

  @override
  Future<HereStationToDisplay> getHereStation() async {
    final rawResponse = await repository.getHereStation();
    return HereStationToDisplay(
        coordinates: rawResponse.data!.location!.coordinates
    );
  }
}
