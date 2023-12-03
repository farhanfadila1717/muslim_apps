// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'adzan_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AdzanState {
  StateStatus get status => throw _privateConstructorUsedError;
  List<Adzan> get todayAdzan => throw _privateConstructorUsedError;
  Adzan? get focusAdzan => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdzanStateCopyWith<AdzanState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdzanStateCopyWith<$Res> {
  factory $AdzanStateCopyWith(
          AdzanState value, $Res Function(AdzanState) then) =
      _$AdzanStateCopyWithImpl<$Res, AdzanState>;
  @useResult
  $Res call({StateStatus status, List<Adzan> todayAdzan, Adzan? focusAdzan});

  $AdzanCopyWith<$Res>? get focusAdzan;
}

/// @nodoc
class _$AdzanStateCopyWithImpl<$Res, $Val extends AdzanState>
    implements $AdzanStateCopyWith<$Res> {
  _$AdzanStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? todayAdzan = null,
    Object? focusAdzan = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      todayAdzan: null == todayAdzan
          ? _value.todayAdzan
          : todayAdzan // ignore: cast_nullable_to_non_nullable
              as List<Adzan>,
      focusAdzan: freezed == focusAdzan
          ? _value.focusAdzan
          : focusAdzan // ignore: cast_nullable_to_non_nullable
              as Adzan?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AdzanCopyWith<$Res>? get focusAdzan {
    if (_value.focusAdzan == null) {
      return null;
    }

    return $AdzanCopyWith<$Res>(_value.focusAdzan!, (value) {
      return _then(_value.copyWith(focusAdzan: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AdzanStateImplCopyWith<$Res>
    implements $AdzanStateCopyWith<$Res> {
  factory _$$AdzanStateImplCopyWith(
          _$AdzanStateImpl value, $Res Function(_$AdzanStateImpl) then) =
      __$$AdzanStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StateStatus status, List<Adzan> todayAdzan, Adzan? focusAdzan});

  @override
  $AdzanCopyWith<$Res>? get focusAdzan;
}

/// @nodoc
class __$$AdzanStateImplCopyWithImpl<$Res>
    extends _$AdzanStateCopyWithImpl<$Res, _$AdzanStateImpl>
    implements _$$AdzanStateImplCopyWith<$Res> {
  __$$AdzanStateImplCopyWithImpl(
      _$AdzanStateImpl _value, $Res Function(_$AdzanStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? todayAdzan = null,
    Object? focusAdzan = freezed,
  }) {
    return _then(_$AdzanStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      todayAdzan: null == todayAdzan
          ? _value._todayAdzan
          : todayAdzan // ignore: cast_nullable_to_non_nullable
              as List<Adzan>,
      focusAdzan: freezed == focusAdzan
          ? _value.focusAdzan
          : focusAdzan // ignore: cast_nullable_to_non_nullable
              as Adzan?,
    ));
  }
}

/// @nodoc

class _$AdzanStateImpl extends _AdzanState {
  const _$AdzanStateImpl(
      {this.status = StateStatus.empty,
      final List<Adzan> todayAdzan = const [],
      this.focusAdzan})
      : _todayAdzan = todayAdzan,
        super._();

  @override
  @JsonKey()
  final StateStatus status;
  final List<Adzan> _todayAdzan;
  @override
  @JsonKey()
  List<Adzan> get todayAdzan {
    if (_todayAdzan is EqualUnmodifiableListView) return _todayAdzan;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todayAdzan);
  }

  @override
  final Adzan? focusAdzan;

  @override
  String toString() {
    return 'AdzanState(status: $status, todayAdzan: $todayAdzan, focusAdzan: $focusAdzan)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdzanStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._todayAdzan, _todayAdzan) &&
            (identical(other.focusAdzan, focusAdzan) ||
                other.focusAdzan == focusAdzan));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_todayAdzan), focusAdzan);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdzanStateImplCopyWith<_$AdzanStateImpl> get copyWith =>
      __$$AdzanStateImplCopyWithImpl<_$AdzanStateImpl>(this, _$identity);
}

abstract class _AdzanState extends AdzanState {
  const factory _AdzanState(
      {final StateStatus status,
      final List<Adzan> todayAdzan,
      final Adzan? focusAdzan}) = _$AdzanStateImpl;
  const _AdzanState._() : super._();

  @override
  StateStatus get status;
  @override
  List<Adzan> get todayAdzan;
  @override
  Adzan? get focusAdzan;
  @override
  @JsonKey(ignore: true)
  _$$AdzanStateImplCopyWith<_$AdzanStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
