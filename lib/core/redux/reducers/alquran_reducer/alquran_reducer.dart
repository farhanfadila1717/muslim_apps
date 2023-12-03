import 'package:alquran_new/core/redux/actions/alquran_action/alquran_action.dart';
import 'package:alquran_new/core/redux/states/app_state/app_state.dart';
import 'package:redux/redux.dart';

final alquranReducer = combineReducers<AppState>([
  TypedReducer(_onSetAlquranListAction),
  TypedReducer(_onSetHightligtAlquranAction),
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
