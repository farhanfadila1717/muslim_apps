// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alquran.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AlquranImpl _$$AlquranImplFromJson(Map<String, dynamic> json) =>
    _$AlquranImpl(
      no: json['no'] as int,
      name: json['name'] as String,
      arab: json['arab'] as String,
      start: json['start'] as int,
      count: json['count'] as int,
      rukku: json['rukku'] as int,
      type: json['type'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$AlquranImplToJson(_$AlquranImpl instance) =>
    <String, dynamic>{
      'no': instance.no,
      'name': instance.name,
      'arab': instance.arab,
      'start': instance.start,
      'count': instance.count,
      'rukku': instance.rukku,
      'type': instance.type,
      'description': instance.description,
    };
