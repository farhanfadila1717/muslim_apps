import 'package:freezed_annotation/freezed_annotation.dart';

part 'alquran.freezed.dart';
part 'alquran.g.dart';

@freezed
class Alquran with _$Alquran {
  const Alquran._();

  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Alquran({
    required int no,
    required String name,
    required String arab,
    required int start,
    required int count,
    required int rukku,
    required String type,
    required String description,
  }) = _Alquran;

  factory Alquran.fromJson(Map<String, dynamic> json) =>
      _$AlquranFromJson(json);
}
