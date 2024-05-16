import 'package:air_buddy/feature/map/data/models/hearStationModel.dart';
import 'package:core_libs/dependency_injection/get_it.dart';
import 'package:core_libs/network/http/http_service.dart';

import '../../../../infrastructure/port_weather/repository.dart';

class HereStationRepository extends IHereStationRepository{
  final HttpService httpService = getIt.get<HttpService>(instanceName: 'airvisual');

  @override
  Future<HereStationModel> getHereStation() async {
    final hereStation = await httpService.get('/v2/nearest_city?key=0f87c1be-33e1-4c39-8a53-a3f62654fa17');
    HereStationModel hereStationModel = HereStationModel.fromJson(hereStation);
    return hereStationModel;
  }

}