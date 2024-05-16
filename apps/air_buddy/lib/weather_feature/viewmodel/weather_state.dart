import 'package:air_buddy/weather_feature/domain/entities/air_entity.dart';
import 'package:air_buddy/weather_feature/domain/entities/polution_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'weather_state.freezed.dart';

@freezed
class WeatherState with _$WeatherState {


  factory WeatherState({
    required bool loading , 
    required bool loadingCity , 
    required List<Air> currentAir,
    required List<Polution> city,
    }) = _WeatherState;


}
