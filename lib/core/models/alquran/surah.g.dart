// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surah.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SurahImpl _$$SurahImplFromJson(Map<String, dynamic> json) => _$SurahImpl(
      no: json['no'] as int,
      arab: json['arab'] as String,
      latin: json['latin'] as String,
      translate: Translate.fromJson(json['translate'] as Map<String, dynamic>),
      audio: Audio.fromJson(json['audio'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SurahImplToJson(_$SurahImpl instance) =>
    <String, dynamic>{
      'no': instance.no,
      'arab': instance.arab,
      'latin': instance.latin,
      'translate': instance.translate,
      'audio': instance.audio,
    };
