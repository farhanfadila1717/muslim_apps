// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alquran_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AlquranDetail _$AlquranDetailFromJson(Map<String, dynamic> json) {
  return _AlquranDetail.fromJson(json);
}

/// @nodoc
mixin _$AlquranDetail {
  Alquran get alquran => throw _privateConstructorUsedError;
  List<Surah> get surah => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlquranDetailCopyWith<AlquranDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlquranDetailCopyWith<$Res> {
  factory $AlquranDetailCopyWith(
          AlquranDetail value, $Res Function(AlquranDetail) then) =
      _$AlquranDetailCopyWithImpl<$Res, AlquranDetail>;
  @useResult
  $Res call({Alquran alquran, List<Surah> surah});

  $AlquranCopyWith<$Res> get alquran;
}

/// @nodoc
class _$AlquranDetailCopyWithImpl<$Res, $Val extends AlquranDetail>
    implements $AlquranDetailCopyWith<$Res> {
  _$AlquranDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alquran = null,
    Object? surah = null,
  }) {
    return _then(_value.copyWith(
      alquran: null == alquran
          ? _value.alquran
          : alquran // ignore: cast_nullable_to_non_nullable
              as Alquran,
      surah: null == surah
          ? _value.surah
          : surah // ignore: cast_nullable_to_non_nullable
              as List<Surah>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AlquranCopyWith<$Res> get alquran {
    return $AlquranCopyWith<$Res>(_value.alquran, (value) {
      return _then(_value.copyWith(alquran: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AlquranDetailImplCopyWith<$Res>
    implements $AlquranDetailCopyWith<$Res> {
  factory _$$AlquranDetailImplCopyWith(
          _$AlquranDetailImpl value, $Res Function(_$AlquranDetailImpl) then) =
      __$$AlquranDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Alquran alquran, List<Surah> surah});

  @override
  $AlquranCopyWith<$Res> get alquran;
}

/// @nodoc
class __$$AlquranDetailImplCopyWithImpl<$Res>
    extends _$AlquranDetailCopyWithImpl<$Res, _$AlquranDetailImpl>
    implements _$$AlquranDetailImplCopyWith<$Res> {
  __$$AlquranDetailImplCopyWithImpl(
      _$AlquranDetailImpl _value, $Res Function(_$AlquranDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alquran = null,
    Object? surah = null,
  }) {
    return _then(_$AlquranDetailImpl(
      alquran: null == alquran
          ? _value.alquran
          : alquran // ignore: cast_nullable_to_non_nullable
              as Alquran,
      surah: null == surah
          ? _value._surah
          : surah // ignore: cast_nullable_to_non_nullable
              as List<Surah>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$AlquranDetailImpl extends _AlquranDetail {
  const _$AlquranDetailImpl(
      {required this.alquran, required final List<Surah> surah})
      : _surah = surah,
        super._();

  factory _$AlquranDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlquranDetailImplFromJson(json);

  @override
  final Alquran alquran;
  final List<Surah> _surah;
  @override
  List<Surah> get surah {
    if (_surah is EqualUnmodifiableListView) return _surah;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_surah);
  }

  @override
  String toString() {
    return 'AlquranDetail(alquran: $alquran, surah: $surah)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlquranDetailImpl &&
            (identical(other.alquran, alquran) || other.alquran == alquran) &&
            const DeepCollectionEquality().equals(other._surah, _surah));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, alquran, const DeepCollectionEquality().hash(_surah));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlquranDetailImplCopyWith<_$AlquranDetailImpl> get copyWith =>
      __$$AlquranDetailImplCopyWithImpl<_$AlquranDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlquranDetailImplToJson(
      this,
    );
  }
}

abstract class _AlquranDetail extends AlquranDetail {
  const factory _AlquranDetail(
      {required final Alquran alquran,
      required final List<Surah> surah}) = _$AlquranDetailImpl;
  const _AlquranDetail._() : super._();

  factory _AlquranDetail.fromJson(Map<String, dynamic> json) =
      _$AlquranDetailImpl.fromJson;

  @override
  Alquran get alquran;
  @override
  List<Surah> get surah;
  @override
  @JsonKey(ignore: true)
  _$$AlquranDetailImplCopyWith<_$AlquranDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
