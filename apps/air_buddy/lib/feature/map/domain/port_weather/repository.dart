import '../../data/models/hearStationModel.dart';
import '../../data/models/stationModel.dart';
import '../../data/models/weatherModel.dart';
import '../entitys/station.dart';

abstract class IWeatherRepository {
  Future<WeatherModel> getByLatLng(double lat,double lng);
}

abstract class IStationRepository {
  Future <StationModel> getStation(double lat,double lng);
}

abstract class IHereStationRepository {
  Future <HereStationModel> getHereStation();
}