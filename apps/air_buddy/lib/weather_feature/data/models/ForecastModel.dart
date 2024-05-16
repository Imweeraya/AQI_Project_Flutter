import 'dart:convert';
ForecastModel forecastModelFromJson(String str) => ForecastModel.fromJson(json.decode(str));
String forecastModelToJson(ForecastModel data) => json.encode(data.toJson());
class ForecastModel {
  ForecastModel({
      this.weatherForecast7Day, 
      this.province,});

  ForecastModel.fromJson(dynamic json) {
    weatherForecast7Day = json['weatherForecast7Day'] != null ? WeatherForecast7Day.fromJson(json['weatherForecast7Day']) : null;
    province = json['province'] != null ? Province.fromJson(json['province']) : null;
  }
  WeatherForecast7Day? weatherForecast7Day;
  Province? province;
ForecastModel copyWith({  WeatherForecast7Day? weatherForecast7Day,
  Province? province,
}) => ForecastModel(  weatherForecast7Day: weatherForecast7Day ?? this.weatherForecast7Day,
  province: province ?? this.province,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (weatherForecast7Day != null) {
      map['weatherForecast7Day'] = weatherForecast7Day?.toJson();
    }
    if (province != null) {
      map['province'] = province?.toJson();
    }
    return map;
  }

}

Province provinceFromJson(String str) => Province.fromJson(json.decode(str));
String provinceToJson(Province data) => json.encode(data.toJson());
class Province {
  Province({
      this.name, 
      this.geoCode, 
      this.region, 
      this.latitude, 
      this.longitude, 
      this.nameEN, 
      this.id, 
      this.creationTime, 
      this.creatorId, 
      this.lastModificationTime, 
      this.lastModifierId, 
      this.isDeleted, 
      this.deleterId, 
      this.deletionTime,});

  Province.fromJson(dynamic json) {
    name = json['name'];
    geoCode = json['geoCode'];
    region = json['region'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    nameEN = json['nameEN'];
    id = json['id'];
    creationTime = json['creationTime'];
    creatorId = json['creatorId'];
    lastModificationTime = json['lastModificationTime'];
    lastModifierId = json['lastModifierId'];
    isDeleted = json['isDeleted'];
    deleterId = json['deleterId'];
    deletionTime = json['deletionTime'];
  }
  String? name;
  String? geoCode;
  num? region;
  dynamic latitude;
  dynamic longitude;
  String? nameEN;
  num? id;
  dynamic creationTime;
  dynamic creatorId;
  dynamic lastModificationTime;
  dynamic lastModifierId;
  dynamic isDeleted;
  dynamic deleterId;
  dynamic deletionTime;
Province copyWith({  String? name,
  String? geoCode,
  num? region,
  dynamic latitude,
  dynamic longitude,
  String? nameEN,
  num? id,
  dynamic creationTime,
  dynamic creatorId,
  dynamic lastModificationTime,
  dynamic lastModifierId,
  dynamic isDeleted,
  dynamic deleterId,
  dynamic deletionTime,
}) => Province(  name: name ?? this.name,
  geoCode: geoCode ?? this.geoCode,
  region: region ?? this.region,
  latitude: latitude ?? this.latitude,
  longitude: longitude ?? this.longitude,
  nameEN: nameEN ?? this.nameEN,
  id: id ?? this.id,
  creationTime: creationTime ?? this.creationTime,
  creatorId: creatorId ?? this.creatorId,
  lastModificationTime: lastModificationTime ?? this.lastModificationTime,
  lastModifierId: lastModifierId ?? this.lastModifierId,
  isDeleted: isDeleted ?? this.isDeleted,
  deleterId: deleterId ?? this.deleterId,
  deletionTime: deletionTime ?? this.deletionTime,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['geoCode'] = geoCode;
    map['region'] = region;
    map['latitude'] = latitude;
    map['longitude'] = longitude;
    map['nameEN'] = nameEN;
    map['id'] = id;
    map['creationTime'] = creationTime;
    map['creatorId'] = creatorId;
    map['lastModificationTime'] = lastModificationTime;
    map['lastModifierId'] = lastModifierId;
    map['isDeleted'] = isDeleted;
    map['deleterId'] = deleterId;
    map['deletionTime'] = deletionTime;
    return map;
  }

}

WeatherForecast7Day weatherForecast7DayFromJson(String str) => WeatherForecast7Day.fromJson(json.decode(str));
String weatherForecast7DayToJson(WeatherForecast7Day data) => json.encode(data.toJson());
class WeatherForecast7Day {
  WeatherForecast7Day({
      this.provinceId, 
      this.regionId, 
      this.maxTemperature, 
      this.minTemperature, 
      this.rainArea, 
      this.windDirectionImagePath, 
      this.windDirection, 
      this.windSpeed, 
      this.weatherType, 
      this.description, 
      this.descriptionEN, 
      this.recordTime, 
      this.name, 
      this.nameEN, 
      this.weatherTypeText, 
      this.rainAreaText, 
      this.weatherTypeImagePath, 
      this.waveType, 
      this.waveTypeText, 
      this.waveTypeImage, 
      this.temperatureType, 
      this.temperatureTypeText, 
      this.temperatureTypeImage, 
      this.mainWeatherTypeText, 
      this.id, 
      this.creationTime, 
      this.creatorId, 
      this.lastModificationTime, 
      this.lastModifierId, 
      this.isDeleted, 
      this.deleterId, 
      this.deletionTime,});

  WeatherForecast7Day.fromJson(dynamic json) {
    provinceId = json['provinceId'];
    regionId = json['regionId'];
    maxTemperature = json['maxTemperature'];
    minTemperature = json['minTemperature'];
    rainArea = json['rainArea'];
    windDirectionImagePath = json['windDirectionImagePath'];
    windDirection = json['windDirection'];
    windSpeed = json['windSpeed'];
    weatherType = json['weatherType'];
    description = json['description'];
    descriptionEN = json['descriptionEN'];
    recordTime = json['recordTime'];
    name = json['name'];
    nameEN = json['nameEN'];
    weatherTypeText = json['weatherTypeText'];
    rainAreaText = json['rainAreaText'];
    weatherTypeImagePath = json['weatherTypeImagePath'];
    waveType = json['waveType'];
    waveTypeText = json['waveTypeText'];
    waveTypeImage = json['waveTypeImage'];
    temperatureType = json['temperatureType'];
    temperatureTypeText = json['temperatureTypeText'];
    temperatureTypeImage = json['temperatureTypeImage'];
    mainWeatherTypeText = json['mainWeatherTypeText'];
    id = json['id'];
    creationTime = json['creationTime'];
    creatorId = json['creatorId'];
    lastModificationTime = json['lastModificationTime'];
    lastModifierId = json['lastModifierId'];
    isDeleted = json['isDeleted'];
    deleterId = json['deleterId'];
    deletionTime = json['deletionTime'];
  }
  num? provinceId;
  dynamic regionId;
  num? maxTemperature;
  num? minTemperature;
  num? rainArea;
  String? windDirectionImagePath;
  num? windDirection;
  num? windSpeed;
  num? weatherType;
  String? description;
  dynamic descriptionEN;
  String? recordTime;
  dynamic name;
  dynamic nameEN;
  String? weatherTypeText;
  String? rainAreaText;
  String? weatherTypeImagePath;
  dynamic waveType;
  dynamic waveTypeText;
  dynamic waveTypeImage;
  num? temperatureType;
  String? temperatureTypeText;
  String? temperatureTypeImage;
  dynamic mainWeatherTypeText;
  num? id;
  String? creationTime;
  String? creatorId;
  String? lastModificationTime;
  String? lastModifierId;
  bool? isDeleted;
  dynamic deleterId;
  dynamic deletionTime;
WeatherForecast7Day copyWith({  num? provinceId,
  dynamic regionId,
  num? maxTemperature,
  num? minTemperature,
  num? rainArea,
  String? windDirectionImagePath,
  num? windDirection,
  num? windSpeed,
  num? weatherType,
  String? description,
  dynamic descriptionEN,
  String? recordTime,
  dynamic name,
  dynamic nameEN,
  String? weatherTypeText,
  String? rainAreaText,
  String? weatherTypeImagePath,
  dynamic waveType,
  dynamic waveTypeText,
  dynamic waveTypeImage,
  num? temperatureType,
  String? temperatureTypeText,
  String? temperatureTypeImage,
  dynamic mainWeatherTypeText,
  num? id,
  String? creationTime,
  String? creatorId,
  String? lastModificationTime,
  String? lastModifierId,
  bool? isDeleted,
  dynamic deleterId,
  dynamic deletionTime,
}) => WeatherForecast7Day(  provinceId: provinceId ?? this.provinceId,
  regionId: regionId ?? this.regionId,
  maxTemperature: maxTemperature ?? this.maxTemperature,
  minTemperature: minTemperature ?? this.minTemperature,
  rainArea: rainArea ?? this.rainArea,
  windDirectionImagePath: windDirectionImagePath ?? this.windDirectionImagePath,
  windDirection: windDirection ?? this.windDirection,
  windSpeed: windSpeed ?? this.windSpeed,
  weatherType: weatherType ?? this.weatherType,
  description: description ?? this.description,
  descriptionEN: descriptionEN ?? this.descriptionEN,
  recordTime: recordTime ?? this.recordTime,
  name: name ?? this.name,
  nameEN: nameEN ?? this.nameEN,
  weatherTypeText: weatherTypeText ?? this.weatherTypeText,
  rainAreaText: rainAreaText ?? this.rainAreaText,
  weatherTypeImagePath: weatherTypeImagePath ?? this.weatherTypeImagePath,
  waveType: waveType ?? this.waveType,
  waveTypeText: waveTypeText ?? this.waveTypeText,
  waveTypeImage: waveTypeImage ?? this.waveTypeImage,
  temperatureType: temperatureType ?? this.temperatureType,
  temperatureTypeText: temperatureTypeText ?? this.temperatureTypeText,
  temperatureTypeImage: temperatureTypeImage ?? this.temperatureTypeImage,
  mainWeatherTypeText: mainWeatherTypeText ?? this.mainWeatherTypeText,
  id: id ?? this.id,
  creationTime: creationTime ?? this.creationTime,
  creatorId: creatorId ?? this.creatorId,
  lastModificationTime: lastModificationTime ?? this.lastModificationTime,
  lastModifierId: lastModifierId ?? this.lastModifierId,
  isDeleted: isDeleted ?? this.isDeleted,
  deleterId: deleterId ?? this.deleterId,
  deletionTime: deletionTime ?? this.deletionTime,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['provinceId'] = provinceId;
    map['regionId'] = regionId;
    map['maxTemperature'] = maxTemperature;
    map['minTemperature'] = minTemperature;
    map['rainArea'] = rainArea;
    map['windDirectionImagePath'] = windDirectionImagePath;
    map['windDirection'] = windDirection;
    map['windSpeed'] = windSpeed;
    map['weatherType'] = weatherType;
    map['description'] = description;
    map['descriptionEN'] = descriptionEN;
    map['recordTime'] = recordTime;
    map['name'] = name;
    map['nameEN'] = nameEN;
    map['weatherTypeText'] = weatherTypeText;
    map['rainAreaText'] = rainAreaText;
    map['weatherTypeImagePath'] = weatherTypeImagePath;
    map['waveType'] = waveType;
    map['waveTypeText'] = waveTypeText;
    map['waveTypeImage'] = waveTypeImage;
    map['temperatureType'] = temperatureType;
    map['temperatureTypeText'] = temperatureTypeText;
    map['temperatureTypeImage'] = temperatureTypeImage;
    map['mainWeatherTypeText'] = mainWeatherTypeText;
    map['id'] = id;
    map['creationTime'] = creationTime;
    map['creatorId'] = creatorId;
    map['lastModificationTime'] = lastModificationTime;
    map['lastModifierId'] = lastModifierId;
    map['isDeleted'] = isDeleted;
    map['deleterId'] = deleterId;
    map['deletionTime'] = deletionTime;
    return map;
  }

}