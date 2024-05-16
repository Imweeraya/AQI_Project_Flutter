import 'package:json_annotation/json_annotation.dart';
part 'CityStationModel.g.dart';

@JsonSerializable()
class CityStationModel {
  @JsonKey(name: "status")
  final String? status;
  @JsonKey(name: "data")
  final Data? data;

  CityStationModel({
    this.status,
    this.data,
  });

  CityStationModel copyWith({
    String? status,
    Data? data,
  }) =>
      CityStationModel(
        status: status ?? this.status,
        data: data ?? this.data,
      );

  factory CityStationModel.fromJson(Map<String, dynamic> json) => _$CityStationModelFromJson(json);

  Map<String, dynamic> toJson() => _$CityStationModelToJson(this);
}

@JsonSerializable()
class Data {
  @JsonKey(name: "aqi")
  final int? aqi;
  @JsonKey(name: "idx")
  final int? idx;
  @JsonKey(name: "attributions")
  final List<Attribution>? attributions;
  @JsonKey(name: "city")
  final City? city;
  @JsonKey(name: "dominentpol")
  final String? dominentpol;
  @JsonKey(name: "iaqi")
  final Iaqi? iaqi;
  @JsonKey(name: "time")
  final Time? time;
  @JsonKey(name: "forecast")
  final Forecast? forecast;
  @JsonKey(name: "debug")
  final Debug? debug;

  Data({
    this.aqi,
    this.idx,
    this.attributions,
    this.city,
    this.dominentpol,
    this.iaqi,
    this.time,
    this.forecast,
    this.debug,
  });

  Data copyWith({
    int? aqi,
    int? idx,
    List<Attribution>? attributions,
    City? city,
    String? dominentpol,
    Iaqi? iaqi,
    Time? time,
    Forecast? forecast,
    Debug? debug,
  }) =>
      Data(
        aqi: aqi ?? this.aqi,
        idx: idx ?? this.idx,
        attributions: attributions ?? this.attributions,
        city: city ?? this.city,
        dominentpol: dominentpol ?? this.dominentpol,
        iaqi: iaqi ?? this.iaqi,
        time: time ?? this.time,
        forecast: forecast ?? this.forecast,
        debug: debug ?? this.debug,
      );

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class Attribution {
  @JsonKey(name: "url")
  final String? url;
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "logo")
  final String? logo;

  Attribution({
    this.url,
    this.name,
    this.logo,
  });

  Attribution copyWith({
    String? url,
    String? name,
    String? logo,
  }) =>
      Attribution(
        url: url ?? this.url,
        name: name ?? this.name,
        logo: logo ?? this.logo,
      );

  factory Attribution.fromJson(Map<String, dynamic> json) => _$AttributionFromJson(json);

  Map<String, dynamic> toJson() => _$AttributionToJson(this);
}

@JsonSerializable()
class City {
  @JsonKey(name: "geo")
  final List<double>? geo;
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "url")
  final String? url;
  @JsonKey(name: "location")
  final String? location;

  City({
    this.geo,
    this.name,
    this.url,
    this.location,
  });

  City copyWith({
    List<double>? geo,
    String? name,
    String? url,
    String? location,
  }) =>
      City(
        geo: geo ?? this.geo,
        name: name ?? this.name,
        url: url ?? this.url,
        location: location ?? this.location,
      );

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);

  Map<String, dynamic> toJson() => _$CityToJson(this);
}

@JsonSerializable()
class Debug {
  @JsonKey(name: "sync")
  final DateTime? sync;

  Debug({
    this.sync,
  });

  Debug copyWith({
    DateTime? sync,
  }) =>
      Debug(
        sync: sync ?? this.sync,
      );

  factory Debug.fromJson(Map<String, dynamic> json) => _$DebugFromJson(json);

  Map<String, dynamic> toJson() => _$DebugToJson(this);
}

@JsonSerializable()
class Forecast {
  @JsonKey(name: "daily")
  final Daily? daily;

  Forecast({
    this.daily,
  });

  Forecast copyWith({
    Daily? daily,
  }) =>
      Forecast(
        daily: daily ?? this.daily,
      );

  factory Forecast.fromJson(Map<String, dynamic> json) => _$ForecastFromJson(json);

  Map<String, dynamic> toJson() => _$ForecastToJson(this);
}

@JsonSerializable()
class Daily {
  @JsonKey(name: "o3")
  final List<O3>? o3;
  @JsonKey(name: "pm10")
  final List<O3>? pm10;
  @JsonKey(name: "pm25")
  final List<O3>? pm25;
  @JsonKey(name: "uvi")
  final List<O3>? uvi;

  Daily({
    this.o3,
    this.pm10,
    this.pm25,
    this.uvi,
  });

  Daily copyWith({
    List<O3>? o3,
    List<O3>? pm10,
    List<O3>? pm25,
    List<O3>? uvi,
  }) =>
      Daily(
        o3: o3 ?? this.o3,
        pm10: pm10 ?? this.pm10,
        pm25: pm25 ?? this.pm25,
        uvi: uvi ?? this.uvi,
      );

  factory Daily.fromJson(Map<String, dynamic> json) => _$DailyFromJson(json);

  Map<String, dynamic> toJson() => _$DailyToJson(this);
}

@JsonSerializable()
class O3 {
  @JsonKey(name: "avg")
  final int? avg;
  @JsonKey(name: "day")
  final DateTime? day;
  @JsonKey(name: "max")
  final int? max;
  @JsonKey(name: "min")
  final int? min;

  O3({
    this.avg,
    this.day,
    this.max,
    this.min,
  });

  O3 copyWith({
    int? avg,
    DateTime? day,
    int? max,
    int? min,
  }) =>
      O3(
        avg: avg ?? this.avg,
        day: day ?? this.day,
        max: max ?? this.max,
        min: min ?? this.min,
      );

  factory O3.fromJson(Map<String, dynamic> json) => _$O3FromJson(json);

  Map<String, dynamic> toJson() => _$O3ToJson(this);
}

@JsonSerializable()
class Iaqi {
  @JsonKey(name: "h")
  final H? h;
  @JsonKey(name: "no2")
  final H? no2;
  @JsonKey(name: "o3")
  final H? o3;
  @JsonKey(name: "p")
  final H? p;
  @JsonKey(name: "pm10")
  final H? pm10;
  @JsonKey(name: "pm25")
  final H? pm25;
  @JsonKey(name: "so2")
  final H? so2;
  @JsonKey(name: "t")
  final H? t;
  @JsonKey(name: "w")
  final H? w;

  Iaqi({
    this.h,
    this.no2,
    this.o3,
    this.p,
    this.pm10,
    this.pm25,
    this.so2,
    this.t,
    this.w,
  });

  Iaqi copyWith({
    H? h,
    H? no2,
    H? o3,
    H? p,
    H? pm10,
    H? pm25,
    H? so2,
    H? t,
    H? w,
  }) =>
      Iaqi(
        h: h ?? this.h,
        no2: no2 ?? this.no2,
        o3: o3 ?? this.o3,
        p: p ?? this.p,
        pm10: pm10 ?? this.pm10,
        pm25: pm25 ?? this.pm25,
        so2: so2 ?? this.so2,
        t: t ?? this.t,
        w: w ?? this.w,
      );

  factory Iaqi.fromJson(Map<String, dynamic> json) => _$IaqiFromJson(json);

  Map<String, dynamic> toJson() => _$IaqiToJson(this);
}

@JsonSerializable()
class H {
  @JsonKey(name: "v")
  final double? v;

  H({
    this.v,
  });

  H copyWith({
    double? v,
  }) =>
      H(
        v: v ?? this.v,
      );

  factory H.fromJson(Map<String, dynamic> json) => _$HFromJson(json);

  Map<String, dynamic> toJson() => _$HToJson(this);
}

@JsonSerializable()
class Time {
  @JsonKey(name: "s")
  final DateTime? s;
  @JsonKey(name: "tz")
  final String? tz;
  @JsonKey(name: "v")
  final int? v;
  @JsonKey(name: "iso")
  final DateTime? iso;

  Time({
    this.s,
    this.tz,
    this.v,
    this.iso,
  });

  Time copyWith({
    DateTime? s,
    String? tz,
    int? v,
    DateTime? iso,
  }) =>
      Time(
        s: s ?? this.s,
        tz: tz ?? this.tz,
        v: v ?? this.v,
        iso: iso ?? this.iso,
      );

  factory Time.fromJson(Map<String, dynamic> json) => _$TimeFromJson(json);

  Map<String, dynamic> toJson() => _$TimeToJson(this);
}
