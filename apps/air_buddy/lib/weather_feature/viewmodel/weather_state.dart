import 'package:air_buddy/weather_feature/domain/entities/weather_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'weather_state.freezed.dart';

@freezed
class WeatherState with _$WeatherState {


  factory WeatherState({
    required bool loading , 
    required List<Weather> weathers}) = _WeatherState;


}
