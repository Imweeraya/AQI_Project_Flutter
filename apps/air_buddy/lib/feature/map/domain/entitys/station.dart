class StationToDisplay {
  final List<StationData> data;
  StationToDisplay(this.data);
}

class StationData {
  final num? lat;
  final num? lng;
  final String? aqi;
  final String? stationName;
  StationData({this.lng, this.aqi, this.lat, this.stationName});
}
