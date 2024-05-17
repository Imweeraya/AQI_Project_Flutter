import 'package:air_buddy/weather_feature/domain/entities/air_entity.dart';
import 'package:air_buddy/weather_feature/domain/entities/polution_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_state.freezed.dart';

@freezed
class ErrorState with _$ErrorState {
  factory ErrorState({
    required bool isInternet,
  }) = _ErrorState;
}
