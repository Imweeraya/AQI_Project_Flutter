import 'dart:convert';
StationModel stationModelFromJson(String str) => StationModel.fromJson(json.decode(str));
String stationModelToJson(StationModel data) => json.encode(data.toJson());
class StationModel {
  StationModel({
      this.status, 
      this.data,});

  StationModel.fromJson(dynamic json) {
    status = json['status'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(Data.fromJson(v));
      });
    }
  }
  String? status;
  List<Data>? data;
StationModel copyWith({  String? status,
  List<Data>? data,
}) => StationModel(  status: status ?? this.status,
  data: data ?? this.data,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    if (data != null) {
      map['data'] = data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      this.lat, 
      this.lon, 
      this.uid, 
      this.aqi, 
      this.station,});

  Data.fromJson(dynamic json) {
    lat = json['lat'];
    lon = json['lon'];
    uid = json['uid'];
    aqi = json['aqi'];
    station = json['station'] != null ? Station.fromJson(json['station']) : null;
  }
  num? lat;
  num? lon;
  num? uid;
  String? aqi;
  Station? station;
Data copyWith({  num? lat,
  num? lon,
  num? uid,
  String? aqi,
  Station? station,
}) => Data(  lat: lat ?? this.lat,
  lon: lon ?? this.lon,
  uid: uid ?? this.uid,
  aqi: aqi ?? this.aqi,
  station: station ?? this.station,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['lat'] = lat;
    map['lon'] = lon;
    map['uid'] = uid;
    map['aqi'] = aqi;
    if (station != null) {
      map['station'] = station?.toJson();
    }
    return map;
  }

}

Station stationFromJson(String str) => Station.fromJson(json.decode(str));
String stationToJson(Station data) => json.encode(data.toJson());
class Station {
  Station({
      this.name, 
      this.time,});

  Station.fromJson(dynamic json) {
    name = json['name'];
    time = json['time'];
  }
  String? name;
  String? time;
Station copyWith({  String? name,
  String? time,
}) => Station(  name: name ?? this.name,
  time: time ?? this.time,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['time'] = time;
    return map;
  }

}