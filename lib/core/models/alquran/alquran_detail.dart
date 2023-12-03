import 'package:alquran_new/core/models/alquran/alquran.dart';
import 'package:alquran_new/core/models/alquran/surah.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'alquran_detail.freezed.dart';
part 'alquran_detail.g.dart';

@freezed
class AlquranDetail with _$AlquranDetail {
  const AlquranDetail._();

  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory AlquranDetail({
    required Alquran alquran,
    required List<Surah> surah,
  }) = _AlquranDetail;

  factory AlquranDetail.fromJson(Map<String, dynamic> json) =>
      _$AlquranDetailFromJson(json);
}
