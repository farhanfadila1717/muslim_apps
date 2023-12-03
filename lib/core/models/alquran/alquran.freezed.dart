// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alquran.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Alquran _$AlquranFromJson(Map<String, dynamic> json) {
  return _Alquran.fromJson(json);
}

/// @nodoc
mixin _$Alquran {
  int get no => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get arab => throw _privateConstructorUsedError;
  int get start => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  int get rukku => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlquranCopyWith<Alquran> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlquranCopyWith<$Res> {
  factory $AlquranCopyWith(Alquran value, $Res Function(Alquran) then) =
      _$AlquranCopyWithImpl<$Res, Alquran>;
  @useResult
  $Res call(
      {int no,
      String name,
      String arab,
      int start,
      int count,
      int rukku,
      String type,
      String description});
}

/// @nodoc
class _$AlquranCopyWithImpl<$Res, $Val extends Alquran>
    implements $AlquranCopyWith<$Res> {
  _$AlquranCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? no = null,
    Object? name = null,
    Object? arab = null,
    Object? start = null,
    Object? count = null,
    Object? rukku = null,
    Object? type = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      no: null == no
          ? _value.no
          : no // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      arab: null == arab
          ? _value.arab
          : arab // ignore: cast_nullable_to_non_nullable
              as String,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      rukku: null == rukku
          ? _value.rukku
          : rukku // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AlquranImplCopyWith<$Res> implements $AlquranCopyWith<$Res> {
  factory _$$AlquranImplCopyWith(
          _$AlquranImpl value, $Res Function(_$AlquranImpl) then) =
      __$$AlquranImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int no,
      String name,
      String arab,
      int start,
      int count,
      int rukku,
      String type,
      String description});
}

/// @nodoc
class __$$AlquranImplCopyWithImpl<$Res>
    extends _$AlquranCopyWithImpl<$Res, _$AlquranImpl>
    implements _$$AlquranImplCopyWith<$Res> {
  __$$AlquranImplCopyWithImpl(
      _$AlquranImpl _value, $Res Function(_$AlquranImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? no = null,
    Object? name = null,
    Object? arab = null,
    Object? start = null,
    Object? count = null,
    Object? rukku = null,
    Object? type = null,
    Object? description = null,
  }) {
    return _then(_$AlquranImpl(
      no: null == no
          ? _value.no
          : no // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      arab: null == arab
          ? _value.arab
          : arab // ignore: cast_nullable_to_non_nullable
              as String,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      rukku: null == rukku
          ? _value.rukku
          : rukku // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$AlquranImpl extends _Alquran {
  const _$AlquranImpl(
      {required this.no,
      required this.name,
      required this.arab,
      required this.start,
      required this.count,
      required this.rukku,
      required this.type,
      required this.description})
      : super._();

  factory _$AlquranImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlquranImplFromJson(json);

  @override
  final int no;
  @override
  final String name;
  @override
  final String arab;
  @override
  final int start;
  @override
  final int count;
  @override
  final int rukku;
  @override
  final String type;
  @override
  final String description;

  @override
  String toString() {
    return 'Alquran(no: $no, name: $name, arab: $arab, start: $start, count: $count, rukku: $rukku, type: $type, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlquranImpl &&
            (identical(other.no, no) || other.no == no) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.arab, arab) || other.arab == arab) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.rukku, rukku) || other.rukku == rukku) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, no, name, arab, start, count, rukku, type, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlquranImplCopyWith<_$AlquranImpl> get copyWith =>
      __$$AlquranImplCopyWithImpl<_$AlquranImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlquranImplToJson(
      this,
    );
  }
}

abstract class _Alquran extends Alquran {
  const factory _Alquran(
      {required final int no,
      required final String name,
      required final String arab,
      required final int start,
      required final int count,
      required final int rukku,
      required final String type,
      required final String description}) = _$AlquranImpl;
  const _Alquran._() : super._();

  factory _Alquran.fromJson(Map<String, dynamic> json) = _$AlquranImpl.fromJson;

  @override
  int get no;
  @override
  String get name;
  @override
  String get arab;
  @override
  int get start;
  @override
  int get count;
  @override
  int get rukku;
  @override
  String get type;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$AlquranImplCopyWith<_$AlquranImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
