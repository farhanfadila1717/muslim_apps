import 'package:alquran_new/common.dart';

final adzanReducer = combineReducers<AppState>([
  TypedReducer(_onSetAdzanAction),
  TypedReducer(_onSetAdzanStateActon),
]);

AppState _onSetAdzanAction(
  AppState appState,
  SetAdzanAction action,
) {
  final adzanState = appState.adzanState.copyWith(
    status: StateStatus.initialized,
    focusAdzan: action.focusAdzan,
    todayAdzan: action.adzan,
  );

  return appState.copyWith(
    adzanState: adzanState,
  );
}

AppState _onSetAdzanStateActon(
  AppState appState,
  SetAdzanStateActon action,
) {
  final adzanState = appState.adzanState.copyWith(
    status: action.status,
  );

  return appState.copyWith(
    adzanState: adzanState,
  );
}
