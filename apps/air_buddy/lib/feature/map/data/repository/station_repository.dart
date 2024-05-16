import 'package:air_buddy/feature/map/domain/port_weather/repository.dart';
import 'package:core_libs/dependency_injection/get_it.dart';
import 'package:core_libs/network/http/http_service.dart';

import '../models/stationModel.dart';

class StationRepository extends IStationRepository{
  final HttpService httpService = getIt.get<HttpService>(instanceName: 'waqi');
  @override
  Future<StationModel> getStation(double lat,double lng) async {
    final weather = await httpService.get('/v2/map/bounds?latlng=$lat,$lng,5.135168114067062,112.39991160362918&networks=all&token=c446149c4593b2dd221b9d37f1b7612a658f4ccc');
    StationModel stationModel = StationModel.fromJson(weather);
    return stationModel;
  }

}