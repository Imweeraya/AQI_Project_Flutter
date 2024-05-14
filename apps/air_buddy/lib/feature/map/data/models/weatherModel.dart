class WeatherModel {
  String status;
  Data data;

  WeatherModel({
    required this.status,
    required this.data,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      status: json['status'],
      data: Data.fromJson(json['data']),
    );
  }
}

class Data {
  int aqi;
  int idx;
  List<Attribution> attributions;
  City city;
  String dominentpol;
  Iaqi iaqi;
  Time time;
  Forecast forecast;
  Debug debug;

  Data({
    required this.aqi,
    required this.idx,
    required this.attributions,
    required this.city,
    required this.dominentpol,
    required this.iaqi,
    required this.time,
    required this.forecast,
    required this.debug,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      aqi: json['aqi'],
      idx: json['idx'],
      attributions: List<Attribution>.from(json['attributions'].map((x) => Attribution.fromJson(x))),
      city: City.fromJson(json['city']),
      dominentpol: json['dominentpol'],
      iaqi: Iaqi.fromJson(json['iaqi']),
      time: Time.fromJson(json['time']),
      forecast: Forecast.fromJson(json['forecast']),
      debug: Debug.fromJson(json['debug']),
    );
  }
}

class Attribution {
  String url;
  String name;
  String? logo;

  Attribution({
    required this.url,
    required this.name,
    this.logo,
  });

  factory Attribution.fromJson(Map<String, dynamic> json) {
    return Attribution(
      url: json['url'],
      name: json['name'],
      logo: json['logo'],
    );
  }
}

class City {
  List<double> geo;
  String name;
  String url;
  String location;

  City({
    required this.geo,
    required this.name,
    required this.url,
    required this.location,
  });

  factory City.fromJson(Map<String, dynamic> json) {
    return City(
      geo: List<double>.from(json['geo'].map((x) => x.toDouble())),
      name: json['name'],
      url: json['url'],
      location: json['location'],
    );
  }
}

class Debug {
  DateTime sync;

  Debug({
    required this.sync,
  });

  factory Debug.fromJson(Map<String, dynamic> json) {
    return Debug(
      sync: DateTime.parse(json['sync']),
    );
  }
}

class Forecast {
  Daily daily;

  Forecast({
    required this.daily,
  });

  factory Forecast.fromJson(Map<String, dynamic> json) {
    return Forecast(
      daily: Daily.fromJson(json['daily']),
    );
  }
}

class Daily {
  List<O3> o3;
  List<O3> pm10;
  List<O3> pm25;

  Daily({
    required this.o3,
    required this.pm10,
    required this.pm25,
  });

  factory Daily.fromJson(Map<String, dynamic> json) {
    return Daily(
      o3: List<O3>.from(json['o3'].map((x) => O3.fromJson(x))),
      pm10: List<O3>.from(json['pm10'].map((x) => O3.fromJson(x))),
      pm25: List<O3>.from(json['pm25'].map((x) => O3.fromJson(x))),
    );
  }
}

class O3 {
  int avg;
  DateTime day;
  int max;
  int min;

  O3({
    required this.avg,
    required this.day,
    required this.max,
    required this.min,
  });

  factory O3.fromJson(Map<String, dynamic> json) {
    return O3(
      avg: json['avg'],
      day: DateTime.parse(json['day']),
      max: json['max'],
      min: json['min'],
    );
  }
}

class Iaqi {
  Dew dew;
  Dew h;
  Dew no2;
  Dew o3;
  Dew p;
  Dew pm10;
  Dew pm25;
  Dew r;
  Dew so2;
  Dew t;
  Dew w;

  Iaqi({
    required this.dew,
    required this.h,
    required this.no2,
    required this.o3,
    required this.p,
    required this.pm10,
    required this.pm25,
    required this.r,
    required this.so2,
    required this.t,
    required this.w,
  });

  factory Iaqi.fromJson(Map<String, dynamic> json) {
    return Iaqi(
      dew: Dew.fromJson(json['dew']),
      h: Dew.fromJson(json['h']),
      no2: Dew.fromJson(json['no2']),
      o3: Dew.fromJson(json['o3']),
      p: Dew.fromJson(json['p']),
      pm10: Dew.fromJson(json['pm10']),
      pm25: Dew.fromJson(json['pm25']),
      r: Dew.fromJson(json['r']),
      so2: Dew.fromJson(json['so2']),
      t: Dew.fromJson(json['t']),
      w: Dew.fromJson(json['w']),
    );
  }
}

class Dew {
  double v;

  Dew({
    required this.v,
  });

  factory Dew.fromJson(Map<String, dynamic> json) {
    return Dew(
      v: json['v'].toDouble(),
    );
  }
}

class Time {
  DateTime s;
  String tz;
  int v;
  DateTime iso;

  Time({
    required this.s,
    required this.tz,
    required this.v,
    required this.iso,
  });

  factory Time.fromJson(Map<String, dynamic> json) {
    return Time(
      s: DateTime.parse(json['s']),
      tz: json['tz'],
      v: json['v'],
      iso: DateTime.parse(json['iso']),
    );
  }
}
