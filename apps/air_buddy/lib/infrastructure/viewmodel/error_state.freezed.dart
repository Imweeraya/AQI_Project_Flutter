// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ErrorState {
  bool get isInternet => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ErrorStateCopyWith<ErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorStateCopyWith<$Res> {
  factory $ErrorStateCopyWith(
          ErrorState value, $Res Function(ErrorState) then) =
      _$ErrorStateCopyWithImpl<$Res, ErrorState>;
  @useResult
  $Res call({bool isInternet});
}

/// @nodoc
class _$ErrorStateCopyWithImpl<$Res, $Val extends ErrorState>
    implements $ErrorStateCopyWith<$Res> {
  _$ErrorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isInternet = null,
  }) {
    return _then(_value.copyWith(
      isInternet: null == isInternet
          ? _value.isInternet
          : isInternet // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ErrorStateImplCopyWith<$Res>
    implements $ErrorStateCopyWith<$Res> {
  factory _$$ErrorStateImplCopyWith(
          _$ErrorStateImpl value, $Res Function(_$ErrorStateImpl) then) =
      __$$ErrorStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isInternet});
}

/// @nodoc
class __$$ErrorStateImplCopyWithImpl<$Res>
    extends _$ErrorStateCopyWithImpl<$Res, _$ErrorStateImpl>
    implements _$$ErrorStateImplCopyWith<$Res> {
  __$$ErrorStateImplCopyWithImpl(
      _$ErrorStateImpl _value, $Res Function(_$ErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isInternet = null,
  }) {
    return _then(_$ErrorStateImpl(
      isInternet: null == isInternet
          ? _value.isInternet
          : isInternet // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ErrorStateImpl implements _ErrorState {
  _$ErrorStateImpl({required this.isInternet});

  @override
  final bool isInternet;

  @override
  String toString() {
    return 'ErrorState(isInternet: $isInternet)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorStateImpl &&
            (identical(other.isInternet, isInternet) ||
                other.isInternet == isInternet));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isInternet);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      __$$ErrorStateImplCopyWithImpl<_$ErrorStateImpl>(this, _$identity);
}

abstract class _ErrorState implements ErrorState {
  factory _ErrorState({required final bool isInternet}) = _$ErrorStateImpl;

  @override
  bool get isInternet;
  @override
  @JsonKey(ignore: true)
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
