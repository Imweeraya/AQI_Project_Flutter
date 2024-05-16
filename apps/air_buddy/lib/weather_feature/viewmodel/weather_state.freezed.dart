// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WeatherState {
  bool get loading => throw _privateConstructorUsedError;
  bool get loadingCity => throw _privateConstructorUsedError;
  List<Air> get currentAir => throw _privateConstructorUsedError;
  List<Air> get city => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherStateCopyWith<WeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res, WeatherState>;
  @useResult
  $Res call(
      {bool loading, bool loadingCity, List<Air> currentAir, List<Air> city});
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res, $Val extends WeatherState>
    implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? loadingCity = null,
    Object? currentAir = null,
    Object? city = null,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      loadingCity: null == loadingCity
          ? _value.loadingCity
          : loadingCity // ignore: cast_nullable_to_non_nullable
              as bool,
      currentAir: null == currentAir
          ? _value.currentAir
          : currentAir // ignore: cast_nullable_to_non_nullable
              as List<Air>,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as List<Air>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherStateImplCopyWith<$Res>
    implements $WeatherStateCopyWith<$Res> {
  factory _$$WeatherStateImplCopyWith(
          _$WeatherStateImpl value, $Res Function(_$WeatherStateImpl) then) =
      __$$WeatherStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading, bool loadingCity, List<Air> currentAir, List<Air> city});
}

/// @nodoc
class __$$WeatherStateImplCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$WeatherStateImpl>
    implements _$$WeatherStateImplCopyWith<$Res> {
  __$$WeatherStateImplCopyWithImpl(
      _$WeatherStateImpl _value, $Res Function(_$WeatherStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? loadingCity = null,
    Object? currentAir = null,
    Object? city = null,
  }) {
    return _then(_$WeatherStateImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      loadingCity: null == loadingCity
          ? _value.loadingCity
          : loadingCity // ignore: cast_nullable_to_non_nullable
              as bool,
      currentAir: null == currentAir
          ? _value._currentAir
          : currentAir // ignore: cast_nullable_to_non_nullable
              as List<Air>,
      city: null == city
          ? _value._city
          : city // ignore: cast_nullable_to_non_nullable
              as List<Air>,
    ));
  }
}

/// @nodoc

class _$WeatherStateImpl implements _WeatherState {
  _$WeatherStateImpl(
      {required this.loading,
      required this.loadingCity,
      required final List<Air> currentAir,
      required final List<Air> city})
      : _currentAir = currentAir,
        _city = city;

  @override
  final bool loading;
  @override
  final bool loadingCity;
  final List<Air> _currentAir;
  @override
  List<Air> get currentAir {
    if (_currentAir is EqualUnmodifiableListView) return _currentAir;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currentAir);
  }

  final List<Air> _city;
  @override
  List<Air> get city {
    if (_city is EqualUnmodifiableListView) return _city;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_city);
  }

  @override
  String toString() {
    return 'WeatherState(loading: $loading, loadingCity: $loadingCity, currentAir: $currentAir, city: $city)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherStateImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.loadingCity, loadingCity) ||
                other.loadingCity == loadingCity) &&
            const DeepCollectionEquality()
                .equals(other._currentAir, _currentAir) &&
            const DeepCollectionEquality().equals(other._city, _city));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loading,
      loadingCity,
      const DeepCollectionEquality().hash(_currentAir),
      const DeepCollectionEquality().hash(_city));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherStateImplCopyWith<_$WeatherStateImpl> get copyWith =>
      __$$WeatherStateImplCopyWithImpl<_$WeatherStateImpl>(this, _$identity);
}

abstract class _WeatherState implements WeatherState {
  factory _WeatherState(
      {required final bool loading,
      required final bool loadingCity,
      required final List<Air> currentAir,
      required final List<Air> city}) = _$WeatherStateImpl;

  @override
  bool get loading;
  @override
  bool get loadingCity;
  @override
  List<Air> get currentAir;
  @override
  List<Air> get city;
  @override
  @JsonKey(ignore: true)
  _$$WeatherStateImplCopyWith<_$WeatherStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
