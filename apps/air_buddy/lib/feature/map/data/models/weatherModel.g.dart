// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weatherModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherModel _$WeatherModelFromJson(Map<String, dynamic> json) => WeatherModel(
      status: json['status'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WeatherModelToJson(WeatherModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      aqi: (json['aqi'] as num?)?.toInt(),
      idx: (json['idx'] as num?)?.toInt(),
      attributions: (json['attributions'] as List<dynamic>?)
          ?.map((e) => Attribution.fromJson(e as Map<String, dynamic>))
          .toList(),
      city: json['city'] == null
          ? null
          : City.fromJson(json['city'] as Map<String, dynamic>),
      dominentpol: json['dominentpol'] as String?,
      iaqi: json['iaqi'] == null
          ? null
          : Iaqi.fromJson(json['iaqi'] as Map<String, dynamic>),
      time: json['time'] == null
          ? null
          : Time.fromJson(json['time'] as Map<String, dynamic>),
      forecast: json['forecast'] == null
          ? null
          : Forecast.fromJson(json['forecast'] as Map<String, dynamic>),
      debug: json['debug'] == null
          ? null
          : Debug.fromJson(json['debug'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'aqi': instance.aqi,
      'idx': instance.idx,
      'attributions': instance.attributions,
      'city': instance.city,
      'dominentpol': instance.dominentpol,
      'iaqi': instance.iaqi,
      'time': instance.time,
      'forecast': instance.forecast,
      'debug': instance.debug,
    };

Attribution _$AttributionFromJson(Map<String, dynamic> json) => Attribution(
      url: json['url'] as String?,
      name: json['name'] as String?,
      logo: json['logo'] as String?,
    );

Map<String, dynamic> _$AttributionToJson(Attribution instance) =>
    <String, dynamic>{
      'url': instance.url,
      'name': instance.name,
      'logo': instance.logo,
    };

City _$CityFromJson(Map<String, dynamic> json) => City(
      geo: (json['geo'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      name: json['name'] as String?,
      url: json['url'] as String?,
      location: json['location'] as String?,
    );

Map<String, dynamic> _$CityToJson(City instance) => <String, dynamic>{
      'geo': instance.geo,
      'name': instance.name,
      'url': instance.url,
      'location': instance.location,
    };

Debug _$DebugFromJson(Map<String, dynamic> json) => Debug(
      sync:
          json['sync'] == null ? null : DateTime.parse(json['sync'] as String),
    );

Map<String, dynamic> _$DebugToJson(Debug instance) => <String, dynamic>{
      'sync': instance.sync?.toIso8601String(),
    };

Forecast _$ForecastFromJson(Map<String, dynamic> json) => Forecast(
      daily: json['daily'] == null
          ? null
          : Daily.fromJson(json['daily'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ForecastToJson(Forecast instance) => <String, dynamic>{
      'daily': instance.daily,
    };

Daily _$DailyFromJson(Map<String, dynamic> json) => Daily(
      o3: (json['o3'] as List<dynamic>?)
          ?.map((e) => O3.fromJson(e as Map<String, dynamic>))
          .toList(),
      pm10: (json['pm10'] as List<dynamic>?)
          ?.map((e) => O3.fromJson(e as Map<String, dynamic>))
          .toList(),
      pm25: (json['pm25'] as List<dynamic>?)
          ?.map((e) => O3.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DailyToJson(Daily instance) => <String, dynamic>{
      'o3': instance.o3,
      'pm10': instance.pm10,
      'pm25': instance.pm25,
    };

O3 _$O3FromJson(Map<String, dynamic> json) => O3(
      avg: (json['avg'] as num?)?.toInt(),
      day: json['day'] == null ? null : DateTime.parse(json['day'] as String),
      max: (json['max'] as num?)?.toInt(),
      min: (json['min'] as num?)?.toInt(),
    );

Map<String, dynamic> _$O3ToJson(O3 instance) => <String, dynamic>{
      'avg': instance.avg,
      'day': instance.day?.toIso8601String(),
      'max': instance.max,
      'min': instance.min,
    };

Iaqi _$IaqiFromJson(Map<String, dynamic> json) => Iaqi(
      dew: json['dew'] == null
          ? null
          : Dew.fromJson(json['dew'] as Map<String, dynamic>),
      h: json['h'] == null
          ? null
          : Dew.fromJson(json['h'] as Map<String, dynamic>),
      no2: json['no2'] == null
          ? null
          : Dew.fromJson(json['no2'] as Map<String, dynamic>),
      o3: json['o3'] == null
          ? null
          : Dew.fromJson(json['o3'] as Map<String, dynamic>),
      p: json['p'] == null
          ? null
          : Dew.fromJson(json['p'] as Map<String, dynamic>),
      pm10: json['pm10'] == null
          ? null
          : Dew.fromJson(json['pm10'] as Map<String, dynamic>),
      pm25: json['pm25'] == null
          ? null
          : Dew.fromJson(json['pm25'] as Map<String, dynamic>),
      r: json['r'] == null
          ? null
          : Dew.fromJson(json['r'] as Map<String, dynamic>),
      so2: json['so2'] == null
          ? null
          : Dew.fromJson(json['so2'] as Map<String, dynamic>),
      t: json['t'] == null
          ? null
          : Dew.fromJson(json['t'] as Map<String, dynamic>),
      w: json['w'] == null
          ? null
          : Dew.fromJson(json['w'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IaqiToJson(Iaqi instance) => <String, dynamic>{
      'dew': instance.dew,
      'h': instance.h,
      'no2': instance.no2,
      'o3': instance.o3,
      'p': instance.p,
      'pm10': instance.pm10,
      'pm25': instance.pm25,
      'r': instance.r,
      'so2': instance.so2,
      't': instance.t,
      'w': instance.w,
    };

Dew _$DewFromJson(Map<String, dynamic> json) => Dew(
      v: (json['v'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$DewToJson(Dew instance) => <String, dynamic>{
      'v': instance.v,
    };

Time _$TimeFromJson(Map<String, dynamic> json) => Time(
      s: json['s'] == null ? null : DateTime.parse(json['s'] as String),
      tz: json['tz'] as String?,
      v: (json['v'] as num?)?.toInt(),
      iso: json['iso'] == null ? null : DateTime.parse(json['iso'] as String),
    );

Map<String, dynamic> _$TimeToJson(Time instance) => <String, dynamic>{
      's': instance.s?.toIso8601String(),
      'tz': instance.tz,
      'v': instance.v,
      'iso': instance.iso?.toIso8601String(),
    };
