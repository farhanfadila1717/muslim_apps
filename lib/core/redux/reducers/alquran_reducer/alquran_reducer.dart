import 'package:alquran_new/core/redux/actions/alquran_action/alquran_action.dart';
import 'package:alquran_new/core/redux/states/app_state/app_state.dart';
import 'package:redux/redux.dart';

final alquranReducer = combineReducers<AppState>([
  TypedReducer(_onSetAlquranListAction),
  TypedReducer(_onSetHightligtAlquranAction),
  TypedReducer(_onSetAudioToggleAction),
  TypedReducer(_onSetLatinToggleAction),
  TypedReducer(_onSetTranslateToggleAction),
]);

AppState _onSetAlquranListAction(
  AppState appState,
  SetAlquranAction action,
) {
  final alquranState = appState.alquranState.copyWith(
    alquran: action.alquran,
  );

  return appState.copyWith(
    alquranState: alquranState,
  );
}

AppState _onSetHightligtAlquranAction(
  AppState appState,
  SetHightligtAlquranAction action,
) {
  final alquranState = appState.alquranState.copyWith(
    hightligtAlquran: action.hightlightAlquran,
  );

  return appState.copyWith(
    alquranState: alquranState,
  );
}

AppState _onSetAudioToggleAction(
  AppState appState,
  SetAudioToggleAction action,
) {
  final alquranState = appState.alquranState.copyWith(
    showAudio: action.value,
  );

  return appState.copyWith(
    alquranState: alquranState,
  );
}

AppState _onSetLatinToggleAction(
  AppState appState,
  SetLatinToggleAction action,
) {
  final alquranState = appState.alquranState.copyWith(
    showLatin: action.value,
  );

  return appState.copyWith(
    alquranState: alquranState,
  );
}

AppState _onSetTranslateToggleAction(
  AppState appState,
  SetTranslateToggleAction action,
) {
  final alquranState = appState.alquranState.copyWith(
    showTranslate: action.value,
  );

  return appState.copyWith(
    alquranState: alquranState,
  );
}
