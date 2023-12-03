import 'package:freezed_annotation/freezed_annotation.dart';

part 'translate.freezed.dart';
part 'translate.g.dart';

@freezed
class Translate with _$Translate {
  const Translate._();

  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Translate({
    required String id,
    required String en,
  }) = _Translate;

  factory Translate.fromJson(Map<String, dynamic> json) =>
      _$TranslateFromJson(json);
}
