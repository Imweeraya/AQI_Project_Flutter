import 'package:air_buddy/weather_feature/data/models/ForecastModel.dart';

import '../../feature/map/data/models/hearStationModel.dart';
import '../../feature/map/data/models/stationModel.dart';
import '../../feature/map/data/models/weatherModel.dart';
import '../../feature/map/domain/entitys/station.dart';
import '../../weather_feature/data/models/CityStationModel.dart';

abstract class IStationRepository {
  Future <StationModel> getStation(double lat1,double lng1,double lat2,double lng2);
}

abstract class IHereStationRepository {
  Future <HereStationModel> getHereStation();
}

abstract class IStatusWeatherRepository {
  Future<List<ForecastModel>> getWeatherForecast(String city);
  Future <CityStationModel> getWeatherByCity(String city);
}