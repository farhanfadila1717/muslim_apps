// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'adzan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Adzan _$AdzanFromJson(Map<String, dynamic> json) {
  return _Adzan.fromJson(json);
}

/// @nodoc
mixin _$Adzan {
  String get name => throw _privateConstructorUsedError;
  DateTime get time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdzanCopyWith<Adzan> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdzanCopyWith<$Res> {
  factory $AdzanCopyWith(Adzan value, $Res Function(Adzan) then) =
      _$AdzanCopyWithImpl<$Res, Adzan>;
  @useResult
  $Res call({String name, DateTime time});
}

/// @nodoc
class _$AdzanCopyWithImpl<$Res, $Val extends Adzan>
    implements $AdzanCopyWith<$Res> {
  _$AdzanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? time = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdzanImplCopyWith<$Res> implements $AdzanCopyWith<$Res> {
  factory _$$AdzanImplCopyWith(
          _$AdzanImpl value, $Res Function(_$AdzanImpl) then) =
      __$$AdzanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, DateTime time});
}

/// @nodoc
class __$$AdzanImplCopyWithImpl<$Res>
    extends _$AdzanCopyWithImpl<$Res, _$AdzanImpl>
    implements _$$AdzanImplCopyWith<$Res> {
  __$$AdzanImplCopyWithImpl(
      _$AdzanImpl _value, $Res Function(_$AdzanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? time = null,
  }) {
    return _then(_$AdzanImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$AdzanImpl extends _Adzan {
  const _$AdzanImpl({required this.name, required this.time}) : super._();

  factory _$AdzanImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdzanImplFromJson(json);

  @override
  final String name;
  @override
  final DateTime time;

  @override
  String toString() {
    return 'Adzan(name: $name, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdzanImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdzanImplCopyWith<_$AdzanImpl> get copyWith =>
      __$$AdzanImplCopyWithImpl<_$AdzanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdzanImplToJson(
      this,
    );
  }
}

abstract class _Adzan extends Adzan {
  const factory _Adzan(
      {required final String name, required final DateTime time}) = _$AdzanImpl;
  const _Adzan._() : super._();

  factory _Adzan.fromJson(Map<String, dynamic> json) = _$AdzanImpl.fromJson;

  @override
  String get name;
  @override
  DateTime get time;
  @override
  @JsonKey(ignore: true)
  _$$AdzanImplCopyWith<_$AdzanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
