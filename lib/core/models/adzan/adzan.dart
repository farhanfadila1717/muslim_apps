import 'package:freezed_annotation/freezed_annotation.dart';

part 'adzan.freezed.dart';
part 'adzan.g.dart';

@freezed
class Adzan with _$Adzan {
  const Adzan._();

  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Adzan({
    required String name,
    required DateTime time,
  }) = _Adzan;

  factory Adzan.fromJson(Map<String, dynamic> json) => _$AdzanFromJson(json);
}
