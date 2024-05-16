import '../../feature/map/data/models/hearStationModel.dart';
import '../../feature/map/data/models/stationModel.dart';
import '../../feature/map/data/models/weatherModel.dart';
import '../../feature/map/domain/entitys/station.dart';

abstract class IStationRepository {
  Future <StationModel> getStation(double lat1,double lng1,double lat2,double lng2);
}

abstract class IHereStationRepository {
  Future <HereStationModel> getHereStation();
}