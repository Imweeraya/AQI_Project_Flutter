import 'package:json_annotation/json_annotation.dart';
part 'weatherModel.g.dart';
@JsonSerializable()
class WeatherModel {
  @JsonKey(name: "status")
  final String? status;
  @JsonKey(name: "data")
  final Data? data;

  WeatherModel({
    this.status,
    this.data,
  });

  WeatherModel copyWith({
    String? status,
    Data? data,
  }) =>
      WeatherModel(
        status: status ?? this.status,
        data: data ?? this.data,
      );

  factory WeatherModel.fromJson(Map<String, dynamic> json) => _$WeatherModelFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherModelToJson(this);
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

  Daily({
    this.o3,
    this.pm10,
    this.pm25,
  });

  Daily copyWith({
    List<O3>? o3,
    List<O3>? pm10,
    List<O3>? pm25,
  }) =>
      Daily(
        o3: o3 ?? this.o3,
        pm10: pm10 ?? this.pm10,
        pm25: pm25 ?? this.pm25,
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
  @JsonKey(name: "dew")
  final Dew? dew;
  @JsonKey(name: "h")
  final Dew? h;
  @JsonKey(name: "no2")
  final Dew? no2;
  @JsonKey(name: "o3")
  final Dew? o3;
  @JsonKey(name: "p")
  final Dew? p;
  @JsonKey(name: "pm10")
  final Dew? pm10;
  @JsonKey(name: "pm25")
  final Dew? pm25;
  @JsonKey(name: "r")
  final Dew? r;
  @JsonKey(name: "so2")
  final Dew? so2;
  @JsonKey(name: "t")
  final Dew? t;
  @JsonKey(name: "w")
  final Dew? w;

  Iaqi({
    this.dew,
    this.h,
    this.no2,
    this.o3,
    this.p,
    this.pm10,
    this.pm25,
    this.r,
    this.so2,
    this.t,
    this.w,
  });

  Iaqi copyWith({
    Dew? dew,
    Dew? h,
    Dew? no2,
    Dew? o3,
    Dew? p,
    Dew? pm10,
    Dew? pm25,
    Dew? r,
    Dew? so2,
    Dew? t,
    Dew? w,
  }) =>
      Iaqi(
        dew: dew ?? this.dew,
        h: h ?? this.h,
        no2: no2 ?? this.no2,
        o3: o3 ?? this.o3,
        p: p ?? this.p,
        pm10: pm10 ?? this.pm10,
        pm25: pm25 ?? this.pm25,
        r: r ?? this.r,
        so2: so2 ?? this.so2,
        t: t ?? this.t,
        w: w ?? this.w,
      );

  factory Iaqi.fromJson(Map<String, dynamic> json) => _$IaqiFromJson(json);

  Map<String, dynamic> toJson() => _$IaqiToJson(this);
}

@JsonSerializable()
class Dew {
  @JsonKey(name: "v")
  final double? v;

  Dew({
    this.v,
  });

  Dew copyWith({
    double? v,
  }) =>
      Dew(
        v: v ?? this.v,
      );

  factory Dew.fromJson(Map<String, dynamic> json) => _$DewFromJson(json);

  Map<String, dynamic> toJson() => _$DewToJson(this);
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
