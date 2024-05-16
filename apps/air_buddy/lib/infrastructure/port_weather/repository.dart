import '../../feature/map/data/models/hearStationModel.dart';
import '../../feature/map/data/models/stationModel.dart';
import '../../feature/map/data/models/weatherModel.dart';
import '../../feature/map/domain/entitys/station.dart';

abstract class IWeatherRepository {
  Future<WeatherModel> getByLatLng(double lat,double lng);
}

abstract class IStationRepository {
  Future <StationModel> getStation(double lat,double lng);
}

abstract class IHereStationRepository {
  Future <HereStationModel> getHereStation();
}