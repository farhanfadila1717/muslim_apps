import 'package:alquran_new/common.dart';
import 'package:alquran_new/core/models/adzan/adzan.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'adzan_state.freezed.dart';

@freezed
class AdzanState with _$AdzanState {
  const AdzanState._();

  const factory AdzanState({
    @Default(StateStatus.empty) StateStatus status,
    @Default([]) List<Adzan> todayAdzan,
    Adzan? focusAdzan,
  }) = _AdzanState;

  bool get hasInitialized => status == StateStatus.initialized;
}
