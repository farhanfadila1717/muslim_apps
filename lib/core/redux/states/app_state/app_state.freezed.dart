// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppState {
  AdzanState get adzanState => throw _privateConstructorUsedError;
  AlquranState get alquranState => throw _privateConstructorUsedError;
  CityState get cityState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call(
      {AdzanState adzanState, AlquranState alquranState, CityState cityState});

  $AdzanStateCopyWith<$Res> get adzanState;
  $AlquranStateCopyWith<$Res> get alquranState;
  $CityStateCopyWith<$Res> get cityState;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adzanState = null,
    Object? alquranState = null,
    Object? cityState = null,
  }) {
    return _then(_value.copyWith(
      adzanState: null == adzanState
          ? _value.adzanState
          : adzanState // ignore: cast_nullable_to_non_nullable
              as AdzanState,
      alquranState: null == alquranState
          ? _value.alquranState
          : alquranState // ignore: cast_nullable_to_non_nullable
              as AlquranState,
      cityState: null == cityState
          ? _value.cityState
          : cityState // ignore: cast_nullable_to_non_nullable
              as CityState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AdzanStateCopyWith<$Res> get adzanState {
    return $AdzanStateCopyWith<$Res>(_value.adzanState, (value) {
      return _then(_value.copyWith(adzanState: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AlquranStateCopyWith<$Res> get alquranState {
    return $AlquranStateCopyWith<$Res>(_value.alquranState, (value) {
      return _then(_value.copyWith(alquranState: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CityStateCopyWith<$Res> get cityState {
    return $CityStateCopyWith<$Res>(_value.cityState, (value) {
      return _then(_value.copyWith(cityState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppStateImplCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory _$$AppStateImplCopyWith(
          _$AppStateImpl value, $Res Function(_$AppStateImpl) then) =
      __$$AppStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AdzanState adzanState, AlquranState alquranState, CityState cityState});

  @override
  $AdzanStateCopyWith<$Res> get adzanState;
  @override
  $AlquranStateCopyWith<$Res> get alquranState;
  @override
  $CityStateCopyWith<$Res> get cityState;
}

/// @nodoc
class __$$AppStateImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppStateImpl>
    implements _$$AppStateImplCopyWith<$Res> {
  __$$AppStateImplCopyWithImpl(
      _$AppStateImpl _value, $Res Function(_$AppStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adzanState = null,
    Object? alquranState = null,
    Object? cityState = null,
  }) {
    return _then(_$AppStateImpl(
      adzanState: null == adzanState
          ? _value.adzanState
          : adzanState // ignore: cast_nullable_to_non_nullable
              as AdzanState,
      alquranState: null == alquranState
          ? _value.alquranState
          : alquranState // ignore: cast_nullable_to_non_nullable
              as AlquranState,
      cityState: null == cityState
          ? _value.cityState
          : cityState // ignore: cast_nullable_to_non_nullable
              as CityState,
    ));
  }
}

/// @nodoc

class _$AppStateImpl extends _AppState {
  const _$AppStateImpl(
      {this.adzanState = const AdzanState(),
      this.alquranState = const AlquranState(),
      this.cityState = const CityState()})
      : super._();

  @override
  @JsonKey()
  final AdzanState adzanState;
  @override
  @JsonKey()
  final AlquranState alquranState;
  @override
  @JsonKey()
  final CityState cityState;

  @override
  String toString() {
    return 'AppState(adzanState: $adzanState, alquranState: $alquranState, cityState: $cityState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStateImpl &&
            (identical(other.adzanState, adzanState) ||
                other.adzanState == adzanState) &&
            (identical(other.alquranState, alquranState) ||
                other.alquranState == alquranState) &&
            (identical(other.cityState, cityState) ||
                other.cityState == cityState));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, adzanState, alquranState, cityState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      __$$AppStateImplCopyWithImpl<_$AppStateImpl>(this, _$identity);
}

abstract class _AppState extends AppState {
  const factory _AppState(
      {final AdzanState adzanState,
      final AlquranState alquranState,
      final CityState cityState}) = _$AppStateImpl;
  const _AppState._() : super._();

  @override
  AdzanState get adzanState;
  @override
  AlquranState get alquranState;
  @override
  CityState get cityState;
  @override
  @JsonKey(ignore: true)
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
