import '../../data/models/StationModel.dart';
import '../../data/models/weatherModel.dart';
import '../entitys/station.dart';

abstract class IWeatherRepository {
  Future<WeatherModel> getByLatLng(double lat,double lng);
}

abstract class IStationRepository {
  Future <StationModel> getStation();
}