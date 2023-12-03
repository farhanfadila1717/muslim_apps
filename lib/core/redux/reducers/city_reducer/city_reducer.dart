import 'package:alquran_new/core/redux/actions/city_action/city_action.dart';
import 'package:alquran_new/core/redux/states/app_state/app_state.dart';
import 'package:redux/redux.dart';

final cityReducer = combineReducers<AppState>([
  TypedReducer(_onSetCityListAction),
  TypedReducer(_onSetCityAction),
]);

AppState _onSetCityListAction(
  AppState appState,
  SetCityListAction action,
) {
  final cityState = appState.cityState.copyWith(
    citys: action.citys,
  );

  return appState.copyWith(
    cityState: cityState,
  );
}

AppState _onSetCityAction(
  AppState appState,
  SetCityAction action,
) {
  final cityState = appState.cityState.copyWith(
    selectedCity: action.city,
  );

  return appState.copyWith(
    cityState: cityState,
  );
}
