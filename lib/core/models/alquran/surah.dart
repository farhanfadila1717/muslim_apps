import 'package:alquran_new/core/models/alquran/audio.dart';
import 'package:alquran_new/core/models/alquran/translate.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'surah.freezed.dart';
part 'surah.g.dart';

@freezed
class Surah with _$Surah {
  const Surah._();

  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Surah({
    required int no,
    required String arab,
    required String latin,
    required Translate translate,
    required Audio audio,
  }) = _Surah;

  factory Surah.fromJson(Map<String, dynamic> json) => _$SurahFromJson(json);
}
