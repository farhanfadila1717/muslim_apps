// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adzan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdzanImpl _$$AdzanImplFromJson(Map<String, dynamic> json) => _$AdzanImpl(
      name: json['name'] as String,
      time: DateTime.parse(json['time'] as String),
    );

Map<String, dynamic> _$$AdzanImplToJson(_$AdzanImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'time': instance.time.toIso8601String(),
    };
