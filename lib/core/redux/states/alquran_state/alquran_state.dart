import 'package:alquran_new/core/models/alquran/alquran.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'alquran_state.freezed.dart';

@freezed
class AlquranState with _$AlquranState {
  const AlquranState._();

  const factory AlquranState({
    @Default([]) List<Alquran> hightligtAlquran,
    @Default([]) List<Alquran> alquran,
    @Default(true) bool showLatin,
    @Default(true) bool showAudio,
    @Default(false) bool showTranslate,
  }) = _AlquranState;
}
