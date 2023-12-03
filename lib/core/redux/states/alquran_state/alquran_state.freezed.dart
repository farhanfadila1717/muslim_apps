// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alquran_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AlquranState {
  List<Alquran> get hightligtAlquran => throw _privateConstructorUsedError;
  List<Alquran> get alquran => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AlquranStateCopyWith<AlquranState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlquranStateCopyWith<$Res> {
  factory $AlquranStateCopyWith(
          AlquranState value, $Res Function(AlquranState) then) =
      _$AlquranStateCopyWithImpl<$Res, AlquranState>;
  @useResult
  $Res call({List<Alquran> hightligtAlquran, List<Alquran> alquran});
}

/// @nodoc
class _$AlquranStateCopyWithImpl<$Res, $Val extends AlquranState>
    implements $AlquranStateCopyWith<$Res> {
  _$AlquranStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hightligtAlquran = null,
    Object? alquran = null,
  }) {
    return _then(_value.copyWith(
      hightligtAlquran: null == hightligtAlquran
          ? _value.hightligtAlquran
          : hightligtAlquran // ignore: cast_nullable_to_non_nullable
              as List<Alquran>,
      alquran: null == alquran
          ? _value.alquran
          : alquran // ignore: cast_nullable_to_non_nullable
              as List<Alquran>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AlquranStateImplCopyWith<$Res>
    implements $AlquranStateCopyWith<$Res> {
  factory _$$AlquranStateImplCopyWith(
          _$AlquranStateImpl value, $Res Function(_$AlquranStateImpl) then) =
      __$$AlquranStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Alquran> hightligtAlquran, List<Alquran> alquran});
}

/// @nodoc
class __$$AlquranStateImplCopyWithImpl<$Res>
    extends _$AlquranStateCopyWithImpl<$Res, _$AlquranStateImpl>
    implements _$$AlquranStateImplCopyWith<$Res> {
  __$$AlquranStateImplCopyWithImpl(
      _$AlquranStateImpl _value, $Res Function(_$AlquranStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hightligtAlquran = null,
    Object? alquran = null,
  }) {
    return _then(_$AlquranStateImpl(
      hightligtAlquran: null == hightligtAlquran
          ? _value._hightligtAlquran
          : hightligtAlquran // ignore: cast_nullable_to_non_nullable
              as List<Alquran>,
      alquran: null == alquran
          ? _value._alquran
          : alquran // ignore: cast_nullable_to_non_nullable
              as List<Alquran>,
    ));
  }
}

/// @nodoc

class _$AlquranStateImpl extends _AlquranState {
  const _$AlquranStateImpl(
      {final List<Alquran> hightligtAlquran = const [],
      final List<Alquran> alquran = const []})
      : _hightligtAlquran = hightligtAlquran,
        _alquran = alquran,
        super._();

  final List<Alquran> _hightligtAlquran;
  @override
  @JsonKey()
  List<Alquran> get hightligtAlquran {
    if (_hightligtAlquran is EqualUnmodifiableListView)
      return _hightligtAlquran;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hightligtAlquran);
  }

  final List<Alquran> _alquran;
  @override
  @JsonKey()
  List<Alquran> get alquran {
    if (_alquran is EqualUnmodifiableListView) return _alquran;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_alquran);
  }

  @override
  String toString() {
    return 'AlquranState(hightligtAlquran: $hightligtAlquran, alquran: $alquran)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlquranStateImpl &&
            const DeepCollectionEquality()
                .equals(other._hightligtAlquran, _hightligtAlquran) &&
            const DeepCollectionEquality().equals(other._alquran, _alquran));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_hightligtAlquran),
      const DeepCollectionEquality().hash(_alquran));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlquranStateImplCopyWith<_$AlquranStateImpl> get copyWith =>
      __$$AlquranStateImplCopyWithImpl<_$AlquranStateImpl>(this, _$identity);
}

abstract class _AlquranState extends AlquranState {
  const factory _AlquranState(
      {final List<Alquran> hightligtAlquran,
      final List<Alquran> alquran}) = _$AlquranStateImpl;
  const _AlquranState._() : super._();

  @override
  List<Alquran> get hightligtAlquran;
  @override
  List<Alquran> get alquran;
  @override
  @JsonKey(ignore: true)
  _$$AlquranStateImplCopyWith<_$AlquranStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
