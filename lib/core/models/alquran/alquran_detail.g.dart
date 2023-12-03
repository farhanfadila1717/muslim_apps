// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alquran_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AlquranDetailImpl _$$AlquranDetailImplFromJson(Map<String, dynamic> json) =>
    _$AlquranDetailImpl(
      alquran: Alquran.fromJson(json['alquran'] as Map<String, dynamic>),
      surah: (json['surah'] as List<dynamic>)
          .map((e) => Surah.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AlquranDetailImplToJson(_$AlquranDetailImpl instance) =>
    <String, dynamic>{
      'alquran': instance.alquran,
      'surah': instance.surah,
    };
