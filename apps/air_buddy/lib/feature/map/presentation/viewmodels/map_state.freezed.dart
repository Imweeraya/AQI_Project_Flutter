// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MapState {
  bool get loading => throw _privateConstructorUsedError;
  WeatherToDisplay get weather => throw _privateConstructorUsedError;
  HereStationToDisplay get hereStationToDisplay =>
      throw _privateConstructorUsedError;
  StationToDisplay get station => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;
  String get stationName => throw _privateConstructorUsedError;
  String get aqi => throw _privateConstructorUsedError;
  bool get popup => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MapStateCopyWith<MapState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapStateCopyWith<$Res> {
  factory $MapStateCopyWith(MapState value, $Res Function(MapState) then) =
      _$MapStateCopyWithImpl<$Res, MapState>;
  @useResult
  $Res call(
      {bool loading,
      WeatherToDisplay weather,
      HereStationToDisplay hereStationToDisplay,
      StationToDisplay station,
      double lat,
      double lng,
      String stationName,
      String aqi,
      bool popup});
}

/// @nodoc
class _$MapStateCopyWithImpl<$Res, $Val extends MapState>
    implements $MapStateCopyWith<$Res> {
  _$MapStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? weather = null,
    Object? hereStationToDisplay = null,
    Object? station = null,
    Object? lat = null,
    Object? lng = null,
    Object? stationName = null,
    Object? aqi = null,
    Object? popup = null,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as WeatherToDisplay,
      hereStationToDisplay: null == hereStationToDisplay
          ? _value.hereStationToDisplay
          : hereStationToDisplay // ignore: cast_nullable_to_non_nullable
              as HereStationToDisplay,
      station: null == station
          ? _value.station
          : station // ignore: cast_nullable_to_non_nullable
              as StationToDisplay,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
      stationName: null == stationName
          ? _value.stationName
          : stationName // ignore: cast_nullable_to_non_nullable
              as String,
      aqi: null == aqi
          ? _value.aqi
          : aqi // ignore: cast_nullable_to_non_nullable
              as String,
      popup: null == popup
          ? _value.popup
          : popup // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MapstateImplCopyWith<$Res>
    implements $MapStateCopyWith<$Res> {
  factory _$$MapstateImplCopyWith(
          _$MapstateImpl value, $Res Function(_$MapstateImpl) then) =
      __$$MapstateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      WeatherToDisplay weather,
      HereStationToDisplay hereStationToDisplay,
      StationToDisplay station,
      double lat,
      double lng,
      String stationName,
      String aqi,
      bool popup});
}

/// @nodoc
class __$$MapstateImplCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$MapstateImpl>
    implements _$$MapstateImplCopyWith<$Res> {
  __$$MapstateImplCopyWithImpl(
      _$MapstateImpl _value, $Res Function(_$MapstateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? weather = null,
    Object? hereStationToDisplay = null,
    Object? station = null,
    Object? lat = null,
    Object? lng = null,
    Object? stationName = null,
    Object? aqi = null,
    Object? popup = null,
  }) {
    return _then(_$MapstateImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as WeatherToDisplay,
      hereStationToDisplay: null == hereStationToDisplay
          ? _value.hereStationToDisplay
          : hereStationToDisplay // ignore: cast_nullable_to_non_nullable
              as HereStationToDisplay,
      station: null == station
          ? _value.station
          : station // ignore: cast_nullable_to_non_nullable
              as StationToDisplay,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
      stationName: null == stationName
          ? _value.stationName
          : stationName // ignore: cast_nullable_to_non_nullable
              as String,
      aqi: null == aqi
          ? _value.aqi
          : aqi // ignore: cast_nullable_to_non_nullable
              as String,
      popup: null == popup
          ? _value.popup
          : popup // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MapstateImpl implements _Mapstate {
  _$MapstateImpl(
      {required this.loading,
      required this.weather,
      required this.hereStationToDisplay,
      required this.station,
      required this.lat,
      required this.lng,
      required this.stationName,
      required this.aqi,
      required this.popup});

  @override
  final bool loading;
  @override
  final WeatherToDisplay weather;
  @override
  final HereStationToDisplay hereStationToDisplay;
  @override
  final StationToDisplay station;
  @override
  final double lat;
  @override
  final double lng;
  @override
  final String stationName;
  @override
  final String aqi;
  @override
  final bool popup;

  @override
  String toString() {
    return 'MapState(loading: $loading, weather: $weather, hereStationToDisplay: $hereStationToDisplay, station: $station, lat: $lat, lng: $lng, stationName: $stationName, aqi: $aqi, popup: $popup)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapstateImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.weather, weather) || other.weather == weather) &&
            (identical(other.hereStationToDisplay, hereStationToDisplay) ||
                other.hereStationToDisplay == hereStationToDisplay) &&
            (identical(other.station, station) || other.station == station) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.stationName, stationName) ||
                other.stationName == stationName) &&
            (identical(other.aqi, aqi) || other.aqi == aqi) &&
            (identical(other.popup, popup) || other.popup == popup));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, weather,
      hereStationToDisplay, station, lat, lng, stationName, aqi, popup);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MapstateImplCopyWith<_$MapstateImpl> get copyWith =>
      __$$MapstateImplCopyWithImpl<_$MapstateImpl>(this, _$identity);
}

abstract class _Mapstate implements MapState {
  factory _Mapstate(
      {required final bool loading,
      required final WeatherToDisplay weather,
      required final HereStationToDisplay hereStationToDisplay,
      required final StationToDisplay station,
      required final double lat,
      required final double lng,
      required final String stationName,
      required final String aqi,
      required final bool popup}) = _$MapstateImpl;

  @override
  bool get loading;
  @override
  WeatherToDisplay get weather;
  @override
  HereStationToDisplay get hereStationToDisplay;
  @override
  StationToDisplay get station;
  @override
  double get lat;
  @override
  double get lng;
  @override
  String get stationName;
  @override
  String get aqi;
  @override
  bool get popup;
  @override
  @JsonKey(ignore: true)
  _$$MapstateImplCopyWith<_$MapstateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
