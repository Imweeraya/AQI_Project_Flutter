/// status : "ok"
/// data : {"aqi":72,"idx":6817,"attributions":[{"url":"http://aqmthai.com/","name":"Division of Air Quality Data, Air Quality and Noise Management Bureau, Pollution Control Department.","logo":"Thailand-PCD.png"},{"url":"https://waqi.info/","name":"World Air Quality Index Project"}],"city":{"geo":[18.840732,98.96978],"name":"City Hall, Chiangmai, Thailand (ศาลากลางเชียงใหม่)","url":"https://aqicn.org/city/thailand/chiangmai/city-hall","location":""},"dominentpol":"pm25","iaqi":{"dew":{"v":-4},"h":{"v":6.7},"no2":{"v":7.5},"o3":{"v":14.6},"p":{"v":969.5},"pm10":{"v":91},"pm25":{"v":72},"r":{"v":0.6},"so2":{"v":0.6},"t":{"v":38.5},"w":{"v":1.5}},"time":{"s":"2024-05-14 15:00:00","tz":"+07:00","v":1715698800,"iso":"2024-05-14T15:00:00+07:00"},"forecast":{"daily":{"o3":[{"avg":14,"day":"2024-05-12","max":37,"min":2},{"avg":14,"day":"2024-05-13","max":55,"min":1},{"avg":15,"day":"2024-05-14","max":48,"min":1},{"avg":11,"day":"2024-05-15","max":51,"min":1},{"avg":11,"day":"2024-05-16","max":46,"min":1},{"avg":2,"day":"2024-05-17","max":6,"min":1},{"avg":4,"day":"2024-05-18","max":14,"min":1},{"avg":1,"day":"2024-05-19","max":1,"min":1}],"pm10":[{"avg":19,"day":"2024-05-12","max":19,"min":19},{"avg":19,"day":"2024-05-13","max":19,"min":19},{"avg":19,"day":"2024-05-14","max":26,"min":19},{"avg":23,"day":"2024-05-15","max":28,"min":19},{"avg":28,"day":"2024-05-16","max":46,"min":19},{"avg":35,"day":"2024-05-17","max":55,"min":19},{"avg":27,"day":"2024-05-18","max":41,"min":19},{"avg":19,"day":"2024-05-19","max":19,"min":17},{"avg":19,"day":"2024-05-20","max":19,"min":19}],"pm25":[{"avg":68,"day":"2024-05-12","max":68,"min":68},{"avg":68,"day":"2024-05-13","max":68,"min":68},{"avg":68,"day":"2024-05-14","max":83,"min":68},{"avg":73,"day":"2024-05-15","max":88,"min":68},{"avg":87,"day":"2024-05-16","max":138,"min":68},{"avg":107,"day":"2024-05-17","max":156,"min":68},{"avg":85,"day":"2024-05-18","max":124,"min":66},{"avg":67,"day":"2024-05-19","max":68,"min":42},{"avg":67,"day":"2024-05-20","max":68,"min":66}]}},"debug":{"sync":"2024-05-14T17:17:12+09:00"}}

class WeatherModel {
  WeatherModel({
      String? status, 
      Data? data,}){
    _status = status;
    _data = data;
}

  WeatherModel.fromJson(dynamic json) {
    _status = json['status'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  String? _status;
  Data? _data;
WeatherModel copyWith({  String? status,
  Data? data,
}) => WeatherModel(  status: status ?? _status,
  data: data ?? _data,
);
  String? get status => _status;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }

}

/// aqi : 72
/// idx : 6817
/// attributions : [{"url":"http://aqmthai.com/","name":"Division of Air Quality Data, Air Quality and Noise Management Bureau, Pollution Control Department.","logo":"Thailand-PCD.png"},{"url":"https://waqi.info/","name":"World Air Quality Index Project"}]
/// city : {"geo":[18.840732,98.96978],"name":"City Hall, Chiangmai, Thailand (ศาลากลางเชียงใหม่)","url":"https://aqicn.org/city/thailand/chiangmai/city-hall","location":""}
/// dominentpol : "pm25"
/// iaqi : {"dew":{"v":-4},"h":{"v":6.7},"no2":{"v":7.5},"o3":{"v":14.6},"p":{"v":969.5},"pm10":{"v":91},"pm25":{"v":72},"r":{"v":0.6},"so2":{"v":0.6},"t":{"v":38.5},"w":{"v":1.5}}
/// time : {"s":"2024-05-14 15:00:00","tz":"+07:00","v":1715698800,"iso":"2024-05-14T15:00:00+07:00"}
/// forecast : {"daily":{"o3":[{"avg":14,"day":"2024-05-12","max":37,"min":2},{"avg":14,"day":"2024-05-13","max":55,"min":1},{"avg":15,"day":"2024-05-14","max":48,"min":1},{"avg":11,"day":"2024-05-15","max":51,"min":1},{"avg":11,"day":"2024-05-16","max":46,"min":1},{"avg":2,"day":"2024-05-17","max":6,"min":1},{"avg":4,"day":"2024-05-18","max":14,"min":1},{"avg":1,"day":"2024-05-19","max":1,"min":1}],"pm10":[{"avg":19,"day":"2024-05-12","max":19,"min":19},{"avg":19,"day":"2024-05-13","max":19,"min":19},{"avg":19,"day":"2024-05-14","max":26,"min":19},{"avg":23,"day":"2024-05-15","max":28,"min":19},{"avg":28,"day":"2024-05-16","max":46,"min":19},{"avg":35,"day":"2024-05-17","max":55,"min":19},{"avg":27,"day":"2024-05-18","max":41,"min":19},{"avg":19,"day":"2024-05-19","max":19,"min":17},{"avg":19,"day":"2024-05-20","max":19,"min":19}],"pm25":[{"avg":68,"day":"2024-05-12","max":68,"min":68},{"avg":68,"day":"2024-05-13","max":68,"min":68},{"avg":68,"day":"2024-05-14","max":83,"min":68},{"avg":73,"day":"2024-05-15","max":88,"min":68},{"avg":87,"day":"2024-05-16","max":138,"min":68},{"avg":107,"day":"2024-05-17","max":156,"min":68},{"avg":85,"day":"2024-05-18","max":124,"min":66},{"avg":67,"day":"2024-05-19","max":68,"min":42},{"avg":67,"day":"2024-05-20","max":68,"min":66}]}}
/// debug : {"sync":"2024-05-14T17:17:12+09:00"}

class Data {
  Data({
      int? aqi, 
      int? idx, 
      List<Attributions>? attributions, 
      City? city, 
      String? dominentpol, 
      Iaqi? iaqi, 
      Time? time, 
      Forecast? forecast, 
      Debug? debug,}){
    _aqi = aqi;
    _idx = idx;
    _attributions = attributions;
    _city = city;
    _dominentpol = dominentpol;
    _iaqi = iaqi;
    _time = time;
    _forecast = forecast;
    _debug = debug;
}

  Data.fromJson(dynamic json) {
    _aqi = json['aqi'];
    _idx = json['idx'];
    if (json['attributions'] != null) {
      _attributions = [];
      json['attributions'].forEach((v) {
        _attributions?.add(Attributions.fromJson(v));
      });
    }
    _city = json['city'] != null ? City.fromJson(json['city']) : null;
    _dominentpol = json['dominentpol'];
    _iaqi = json['iaqi'] != null ? Iaqi.fromJson(json['iaqi']) : null;
    _time = json['time'] != null ? Time.fromJson(json['time']) : null;
    _forecast = json['forecast'] != null ? Forecast.fromJson(json['forecast']) : null;
    _debug = json['debug'] != null ? Debug.fromJson(json['debug']) : null;
  }
  int? _aqi;
  int? _idx;
  List<Attributions>? _attributions;
  City? _city;
  String? _dominentpol;
  Iaqi? _iaqi;
  Time? _time;
  Forecast? _forecast;
  Debug? _debug;
Data copyWith({  int? aqi,
  int? idx,
  List<Attributions>? attributions,
  City? city,
  String? dominentpol,
  Iaqi? iaqi,
  Time? time,
  Forecast? forecast,
  Debug? debug,
}) => Data(  aqi: aqi ?? _aqi,
  idx: idx ?? _idx,
  attributions: attributions ?? _attributions,
  city: city ?? _city,
  dominentpol: dominentpol ?? _dominentpol,
  iaqi: iaqi ?? _iaqi,
  time: time ?? _time,
  forecast: forecast ?? _forecast,
  debug: debug ?? _debug,
);
  int? get aqi => _aqi;
  int? get idx => _idx;
  List<Attributions>? get attributions => _attributions;
  City? get city => _city;
  String? get dominentpol => _dominentpol;
  Iaqi? get iaqi => _iaqi;
  Time? get time => _time;
  Forecast? get forecast => _forecast;
  Debug? get debug => _debug;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['aqi'] = _aqi;
    map['idx'] = _idx;
    if (_attributions != null) {
      map['attributions'] = _attributions?.map((v) => v.toJson()).toList();
    }
    if (_city != null) {
      map['city'] = _city?.toJson();
    }
    map['dominentpol'] = _dominentpol;
    if (_iaqi != null) {
      map['iaqi'] = _iaqi?.toJson();
    }
    if (_time != null) {
      map['time'] = _time?.toJson();
    }
    if (_forecast != null) {
      map['forecast'] = _forecast?.toJson();
    }
    if (_debug != null) {
      map['debug'] = _debug?.toJson();
    }
    return map;
  }

}

/// sync : "2024-05-14T17:17:12+09:00"

class Debug {
  Debug({
      String? sync,}){
    _sync = sync;
}

  Debug.fromJson(dynamic json) {
    _sync = json['sync'];
  }
  String? _sync;
Debug copyWith({  String? sync,
}) => Debug(  sync: sync ?? _sync,
);
  String? get sync => _sync;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sync'] = _sync;
    return map;
  }

}

/// daily : {"o3":[{"avg":14,"day":"2024-05-12","max":37,"min":2},{"avg":14,"day":"2024-05-13","max":55,"min":1},{"avg":15,"day":"2024-05-14","max":48,"min":1},{"avg":11,"day":"2024-05-15","max":51,"min":1},{"avg":11,"day":"2024-05-16","max":46,"min":1},{"avg":2,"day":"2024-05-17","max":6,"min":1},{"avg":4,"day":"2024-05-18","max":14,"min":1},{"avg":1,"day":"2024-05-19","max":1,"min":1}],"pm10":[{"avg":19,"day":"2024-05-12","max":19,"min":19},{"avg":19,"day":"2024-05-13","max":19,"min":19},{"avg":19,"day":"2024-05-14","max":26,"min":19},{"avg":23,"day":"2024-05-15","max":28,"min":19},{"avg":28,"day":"2024-05-16","max":46,"min":19},{"avg":35,"day":"2024-05-17","max":55,"min":19},{"avg":27,"day":"2024-05-18","max":41,"min":19},{"avg":19,"day":"2024-05-19","max":19,"min":17},{"avg":19,"day":"2024-05-20","max":19,"min":19}],"pm25":[{"avg":68,"day":"2024-05-12","max":68,"min":68},{"avg":68,"day":"2024-05-13","max":68,"min":68},{"avg":68,"day":"2024-05-14","max":83,"min":68},{"avg":73,"day":"2024-05-15","max":88,"min":68},{"avg":87,"day":"2024-05-16","max":138,"min":68},{"avg":107,"day":"2024-05-17","max":156,"min":68},{"avg":85,"day":"2024-05-18","max":124,"min":66},{"avg":67,"day":"2024-05-19","max":68,"min":42},{"avg":67,"day":"2024-05-20","max":68,"min":66}]}

class Forecast {
  Forecast({
      Daily? daily,}){
    _daily = daily;
}

  Forecast.fromJson(dynamic json) {
    _daily = json['daily'] != null ? Daily.fromJson(json['daily']) : null;
  }
  Daily? _daily;
Forecast copyWith({  Daily? daily,
}) => Forecast(  daily: daily ?? _daily,
);
  Daily? get daily => _daily;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_daily != null) {
      map['daily'] = _daily?.toJson();
    }
    return map;
  }

}

/// o3 : [{"avg":14,"day":"2024-05-12","max":37,"min":2},{"avg":14,"day":"2024-05-13","max":55,"min":1},{"avg":15,"day":"2024-05-14","max":48,"min":1},{"avg":11,"day":"2024-05-15","max":51,"min":1},{"avg":11,"day":"2024-05-16","max":46,"min":1},{"avg":2,"day":"2024-05-17","max":6,"min":1},{"avg":4,"day":"2024-05-18","max":14,"min":1},{"avg":1,"day":"2024-05-19","max":1,"min":1}]
/// pm10 : [{"avg":19,"day":"2024-05-12","max":19,"min":19},{"avg":19,"day":"2024-05-13","max":19,"min":19},{"avg":19,"day":"2024-05-14","max":26,"min":19},{"avg":23,"day":"2024-05-15","max":28,"min":19},{"avg":28,"day":"2024-05-16","max":46,"min":19},{"avg":35,"day":"2024-05-17","max":55,"min":19},{"avg":27,"day":"2024-05-18","max":41,"min":19},{"avg":19,"day":"2024-05-19","max":19,"min":17},{"avg":19,"day":"2024-05-20","max":19,"min":19}]
/// pm25 : [{"avg":68,"day":"2024-05-12","max":68,"min":68},{"avg":68,"day":"2024-05-13","max":68,"min":68},{"avg":68,"day":"2024-05-14","max":83,"min":68},{"avg":73,"day":"2024-05-15","max":88,"min":68},{"avg":87,"day":"2024-05-16","max":138,"min":68},{"avg":107,"day":"2024-05-17","max":156,"min":68},{"avg":85,"day":"2024-05-18","max":124,"min":66},{"avg":67,"day":"2024-05-19","max":68,"min":42},{"avg":67,"day":"2024-05-20","max":68,"min":66}]

class Daily {
  Daily({
      List<O3>? o3, 
      List<Pm10>? pm10, 
      List<Pm25>? pm25,}){
    _o3 = o3;
    _pm10 = pm10;
    _pm25 = pm25;
}

  Daily.fromJson(dynamic json) {
    if (json['o3'] != null) {
      _o3 = [];
      json['o3'].forEach((v) {
        _o3?.add(O3.fromJson(v));
      });
    }
    if (json['pm10'] != null) {
      _pm10 = [];
      json['pm10'].forEach((v) {
        _pm10?.add(Pm10.fromJson(v));
      });
    }
    if (json['pm25'] != null) {
      _pm25 = [];
      json['pm25'].forEach((v) {
        _pm25?.add(Pm25.fromJson(v));
      });
    }
  }
  List<O3>? _o3;
  List<Pm10>? _pm10;
  List<Pm25>? _pm25;
Daily copyWith({  List<O3>? o3,
  List<Pm10>? pm10,
  List<Pm25>? pm25,
}) => Daily(  o3: o3 ?? _o3,
  pm10: pm10 ?? _pm10,
  pm25: pm25 ?? _pm25,
);
  List<O3>? get o3 => _o3;
  List<Pm10>? get pm10 => _pm10;
  List<Pm25>? get pm25 => _pm25;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_o3 != null) {
      map['o3'] = _o3?.map((v) => v.toJson()).toList();
    }
    if (_pm10 != null) {
      map['pm10'] = _pm10?.map((v) => v.toJson()).toList();
    }
    if (_pm25 != null) {
      map['pm25'] = _pm25?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// avg : 68
/// day : "2024-05-12"
/// max : 68
/// min : 68

class Pm25 {
  Pm25({
      int? avg, 
      String? day, 
      int? max, 
      int? min,}){
    _avg = avg;
    _day = day;
    _max = max;
    _min = min;
}

  Pm25.fromJson(dynamic json) {
    _avg = json['avg'];
    _day = json['day'];
    _max = json['max'];
    _min = json['min'];
  }
  int? _avg;
  String? _day;
  int? _max;
  int? _min;
Pm25 copyWith({  int? avg,
  String? day,
  int? max,
  int? min,
}) => Pm25(  avg: avg ?? _avg,
  day: day ?? _day,
  max: max ?? _max,
  min: min ?? _min,
);
  int? get avg => _avg;
  String? get day => _day;
  int? get max => _max;
  int? get min => _min;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['avg'] = _avg;
    map['day'] = _day;
    map['max'] = _max;
    map['min'] = _min;
    return map;
  }

}

/// avg : 19
/// day : "2024-05-12"
/// max : 19
/// min : 19

class Pm10 {
  Pm10({
      int? avg, 
      String? day, 
      int? max, 
      int? min,}){
    _avg = avg;
    _day = day;
    _max = max;
    _min = min;
}

  Pm10.fromJson(dynamic json) {
    _avg = json['avg'];
    _day = json['day'];
    _max = json['max'];
    _min = json['min'];
  }
  int? _avg;
  String? _day;
  int? _max;
  int? _min;
Pm10 copyWith({  int? avg,
  String? day,
  int? max,
  int? min,
}) => Pm10(  avg: avg ?? _avg,
  day: day ?? _day,
  max: max ?? _max,
  min: min ?? _min,
);
  int? get avg => _avg;
  String? get day => _day;
  int? get max => _max;
  int? get min => _min;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['avg'] = _avg;
    map['day'] = _day;
    map['max'] = _max;
    map['min'] = _min;
    return map;
  }

}

/// avg : 14
/// day : "2024-05-12"
/// max : 37
/// min : 2

class O3 {
  O3({
      int? avg, 
      String? day, 
      int? max, 
      int? min,}){
    _avg = avg;
    _day = day;
    _max = max;
    _min = min;
}

  O3.fromJson(dynamic json) {
    _avg = json['avg'];
    _day = json['day'];
    _max = json['max'];
    _min = json['min'];
  }
  int? _avg;
  String? _day;
  int? _max;
  int? _min;
O3 copyWith({  int? avg,
  String? day,
  int? max,
  int? min,
}) => O3(  avg: avg ?? _avg,
  day: day ?? _day,
  max: max ?? _max,
  min: min ?? _min,
);
  int? get avg => _avg;
  String? get day => _day;
  int? get max => _max;
  int? get min => _min;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['avg'] = _avg;
    map['day'] = _day;
    map['max'] = _max;
    map['min'] = _min;
    return map;
  }

}

/// s : "2024-05-14 15:00:00"
/// tz : "+07:00"
/// v : 1715698800
/// iso : "2024-05-14T15:00:00+07:00"

class Time {
  Time({
      String? s, 
      String? tz, 
      int? v, 
      String? iso,}){
    _s = s;
    _tz = tz;
    _v = v;
    _iso = iso;
}

  Time.fromJson(dynamic json) {
    _s = json['s'];
    _tz = json['tz'];
    _v = json['v'];
    _iso = json['iso'];
  }
  String? _s;
  String? _tz;
  int? _v;
  String? _iso;
Time copyWith({  String? s,
  String? tz,
  int? v,
  String? iso,
}) => Time(  s: s ?? _s,
  tz: tz ?? _tz,
  v: v ?? _v,
  iso: iso ?? _iso,
);
  String? get s => _s;
  String? get tz => _tz;
  int? get v => _v;
  String? get iso => _iso;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['s'] = _s;
    map['tz'] = _tz;
    map['v'] = _v;
    map['iso'] = _iso;
    return map;
  }

}

/// dew : {"v":-4}
/// h : {"v":6.7}
/// no2 : {"v":7.5}
/// o3 : {"v":14.6}
/// p : {"v":969.5}
/// pm10 : {"v":91}
/// pm25 : {"v":72}
/// r : {"v":0.6}
/// so2 : {"v":0.6}
/// t : {"v":38.5}
/// w : {"v":1.5}

class Iaqi {
  Iaqi({
      Dew? dew, 
      H? h, 
      No2? no2, 
      O3? o3, 
      P? p, 
      Pm10? pm10, 
      Pm25? pm25, 
      R? r, 
      So2? so2, 
      T? t, 
      W? w,}){
    _dew = dew;
    _h = h;
    _no2 = no2;
    _o3 = o3;
    _p = p;
    _pm10 = pm10;
    _pm25 = pm25;
    _r = r;
    _so2 = so2;
    _t = t;
    _w = w;
}

  Iaqi.fromJson(dynamic json) {
    _dew = json['dew'] != null ? Dew.fromJson(json['dew']) : null;
    _h = json['h'] != null ? H.fromJson(json['h']) : null;
    _no2 = json['no2'] != null ? No2.fromJson(json['no2']) : null;
    _o3 = json['o3'] != null ? O3.fromJson(json['o3']) : null;
    _p = json['p'] != null ? P.fromJson(json['p']) : null;
    _pm10 = json['pm10'] != null ? Pm10.fromJson(json['pm10']) : null;
    _pm25 = json['pm25'] != null ? Pm25.fromJson(json['pm25']) : null;
    _r = json['r'] != null ? R.fromJson(json['r']) : null;
    _so2 = json['so2'] != null ? So2.fromJson(json['so2']) : null;
    _t = json['t'] != null ? T.fromJson(json['t']) : null;
    _w = json['w'] != null ? W.fromJson(json['w']) : null;
  }
  Dew? _dew;
  H? _h;
  No2? _no2;
  O3? _o3;
  P? _p;
  Pm10? _pm10;
  Pm25? _pm25;
  R? _r;
  So2? _so2;
  T? _t;
  W? _w;
Iaqi copyWith({  Dew? dew,
  H? h,
  No2? no2,
  O3? o3,
  P? p,
  Pm10? pm10,
  Pm25? pm25,
  R? r,
  So2? so2,
  T? t,
  W? w,
}) => Iaqi(  dew: dew ?? _dew,
  h: h ?? _h,
  no2: no2 ?? _no2,
  o3: o3 ?? _o3,
  p: p ?? _p,
  pm10: pm10 ?? _pm10,
  pm25: pm25 ?? _pm25,
  r: r ?? _r,
  so2: so2 ?? _so2,
  t: t ?? _t,
  w: w ?? _w,
);
  Dew? get dew => _dew;
  H? get h => _h;
  No2? get no2 => _no2;
  O3? get o3 => _o3;
  P? get p => _p;
  Pm10? get pm10 => _pm10;
  Pm25? get pm25 => _pm25;
  R? get r => _r;
  So2? get so2 => _so2;
  T? get t => _t;
  W? get w => _w;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_dew != null) {
      map['dew'] = _dew?.toJson();
    }
    if (_h != null) {
      map['h'] = _h?.toJson();
    }
    if (_no2 != null) {
      map['no2'] = _no2?.toJson();
    }
    if (_o3 != null) {
      map['o3'] = _o3?.toJson();
    }
    if (_p != null) {
      map['p'] = _p?.toJson();
    }
    if (_pm10 != null) {
      map['pm10'] = _pm10?.toJson();
    }
    if (_pm25 != null) {
      map['pm25'] = _pm25?.toJson();
    }
    if (_r != null) {
      map['r'] = _r?.toJson();
    }
    if (_so2 != null) {
      map['so2'] = _so2?.toJson();
    }
    if (_t != null) {
      map['t'] = _t?.toJson();
    }
    if (_w != null) {
      map['w'] = _w?.toJson();
    }
    return map;
  }

}

/// v : 1.5

class W {
  W({
      double? v,}){
    _v = v;
}

  W.fromJson(dynamic json) {
    _v = json['v'];
  }
  double? _v;
W copyWith({  double? v,
}) => W(  v: v ?? _v,
);
  double? get v => _v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['v'] = _v;
    return map;
  }

}

/// v : 38.5

class T {
  T({
      double? v,}){
    _v = v;
}

  T.fromJson(dynamic json) {
    _v = json['v'];
  }
  double? _v;
T copyWith({  double? v,
}) => T(  v: v ?? _v,
);
  double? get v => _v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['v'] = _v;
    return map;
  }

}

/// v : 0.6

class So2 {
  So2({
      double? v,}){
    _v = v;
}

  So2.fromJson(dynamic json) {
    _v = json['v'];
  }
  double? _v;
So2 copyWith({  double? v,
}) => So2(  v: v ?? _v,
);
  double? get v => _v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['v'] = _v;
    return map;
  }

}

/// v : 0.6

class R {
  R({
      double? v,}){
    _v = v;
}

  R.fromJson(dynamic json) {
    _v = json['v'];
  }
  double? _v;
R copyWith({  double? v,
}) => R(  v: v ?? _v,
);
  double? get v => _v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['v'] = _v;
    return map;
  }

}

/// v : 72

class Pm25 {
  Pm25({
      int? v,}){
    _v = v;
}

  Pm25.fromJson(dynamic json) {
    _v = json['v'];
  }
  int? _v;
Pm25 copyWith({  int? v,
}) => Pm25(  v: v ?? _v,
);
  int? get v => _v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['v'] = _v;
    return map;
  }

}

/// v : 91

class Pm10 {
  Pm10({
      int? v,}){
    _v = v;
}

  Pm10.fromJson(dynamic json) {
    _v = json['v'];
  }
  int? _v;
Pm10 copyWith({  int? v,
}) => Pm10(  v: v ?? _v,
);
  int? get v => _v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['v'] = _v;
    return map;
  }

}

/// v : 969.5

class P {
  P({
      double? v,}){
    _v = v;
}

  P.fromJson(dynamic json) {
    _v = json['v'];
  }
  double? _v;
P copyWith({  double? v,
}) => P(  v: v ?? _v,
);
  double? get v => _v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['v'] = _v;
    return map;
  }

}

/// v : 14.6

class O3 {
  O3({
      double? v,}){
    _v = v;
}

  O3.fromJson(dynamic json) {
    _v = json['v'];
  }
  double? _v;
O3 copyWith({  double? v,
}) => O3(  v: v ?? _v,
);
  double? get v => _v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['v'] = _v;
    return map;
  }

}

/// v : 7.5

class No2 {
  No2({
      double? v,}){
    _v = v;
}

  No2.fromJson(dynamic json) {
    _v = json['v'];
  }
  double? _v;
No2 copyWith({  double? v,
}) => No2(  v: v ?? _v,
);
  double? get v => _v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['v'] = _v;
    return map;
  }

}

/// v : 6.7

class H {
  H({
      double? v,}){
    _v = v;
}

  H.fromJson(dynamic json) {
    _v = json['v'];
  }
  double? _v;
H copyWith({  double? v,
}) => H(  v: v ?? _v,
);
  double? get v => _v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['v'] = _v;
    return map;
  }

}

/// v : -4

class Dew {
  Dew({
      int? v,}){
    _v = v;
}

  Dew.fromJson(dynamic json) {
    _v = json['v'];
  }
  int? _v;
Dew copyWith({  int? v,
}) => Dew(  v: v ?? _v,
);
  int? get v => _v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['v'] = _v;
    return map;
  }

}

/// geo : [18.840732,98.96978]
/// name : "City Hall, Chiangmai, Thailand (ศาลากลางเชียงใหม่)"
/// url : "https://aqicn.org/city/thailand/chiangmai/city-hall"
/// location : ""

class City {
  City({
      List<double>? geo, 
      String? name, 
      String? url, 
      String? location,}){
    _geo = geo;
    _name = name;
    _url = url;
    _location = location;
}

  City.fromJson(dynamic json) {
    _geo = json['geo'] != null ? json['geo'].cast<double>() : [];
    _name = json['name'];
    _url = json['url'];
    _location = json['location'];
  }
  List<double>? _geo;
  String? _name;
  String? _url;
  String? _location;
City copyWith({  List<double>? geo,
  String? name,
  String? url,
  String? location,
}) => City(  geo: geo ?? _geo,
  name: name ?? _name,
  url: url ?? _url,
  location: location ?? _location,
);
  List<double>? get geo => _geo;
  String? get name => _name;
  String? get url => _url;
  String? get location => _location;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['geo'] = _geo;
    map['name'] = _name;
    map['url'] = _url;
    map['location'] = _location;
    return map;
  }

}

/// url : "http://aqmthai.com/"
/// name : "Division of Air Quality Data, Air Quality and Noise Management Bureau, Pollution Control Department."
/// logo : "Thailand-PCD.png"

class Attributions {
  Attributions({
      String? url, 
      String? name, 
      String? logo,}){
    _url = url;
    _name = name;
    _logo = logo;
}

  Attributions.fromJson(dynamic json) {
    _url = json['url'];
    _name = json['name'];
    _logo = json['logo'];
  }
  String? _url;
  String? _name;
  String? _logo;
Attributions copyWith({  String? url,
  String? name,
  String? logo,
}) => Attributions(  url: url ?? _url,
  name: name ?? _name,
  logo: logo ?? _logo,
);
  String? get url => _url;
  String? get name => _name;
  String? get logo => _logo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = _url;
    map['name'] = _name;
    map['logo'] = _logo;
    return map;
  }

}