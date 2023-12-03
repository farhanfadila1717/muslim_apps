import 'package:alquran_new/core/redux/states/adzan_state/adzan_state.dart';
import 'package:alquran_new/core/redux/states/alquran_state/alquran_state.dart';
import 'package:alquran_new/core/redux/states/city_state/city_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.freezed.dart';

@freezed
class AppState with _$AppState {
  const AppState._();

  const factory AppState({
    @Default(AdzanState()) AdzanState adzanState,
    @Default(AlquranState()) AlquranState alquranState,
    @Default(CityState()) CityState cityState,
  }) = _AppState;
}
