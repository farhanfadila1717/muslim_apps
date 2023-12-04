import 'dart:convert';

import 'package:alquran_new/common.dart';
import 'package:alquran_new/core/controller/city_controller.dart';
import 'package:alquran_new/core/controller/shared_preferences_controller.dart';
import 'package:alquran_new/core/redux/actions/actions.dart';

const _kKey = 'CITY';

class CityMiddleware extends MiddlewareClass<AppState> {
  final CityController cityController;
  final SharedPreferencesController sharedPreferencesController;

  CityMiddleware({
    required this.cityController,
    required this.sharedPreferencesController,
  });

  @override
  void call(
    Store<AppState> store,
    dynamic action,
    NextDispatcher next,
  ) {
    if (action is GetCityListAction) {
      _onGetCityListAction(store, action);
    } else if (action is GetCityAction) {
      _onGetCityAction(store, action);
    } else if (action is SetCityAction) {
      _onSetCityAction(store, action);
    }

    next(action);
  }

  Future<void> _onGetCityListAction(
    Store<AppState> store,
    GetCityListAction action,
  ) async {
    try {
      if (store.state.cityState.citys.isNotEmpty) return;

      final response = await cityController.getCityList();

      store.dispatches([
        SetCityListAction(response),
        const GetCityAction(),
      ]);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> _onGetCityAction(
    Store<AppState> store,
    GetCityAction action,
  ) async {
    try {
      final savedCityInString =
          sharedPreferencesController.preferences.getString(
        _kKey,
      );

      if (savedCityInString == null) {
        store.dispatch(
          const SetAdzanStateActon(
            StateStatus.initialized,
          ),
        );
        return;
      }

      final city = City.fromJson(
        json.decode(savedCityInString),
      );

      store.dispatch(
        SetCityAction(city),
      );
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> _onSetCityAction(
    Store<AppState> store,
    SetCityAction action,
  ) async {
    try {
      sharedPreferencesController.preferences.setString(
        _kKey,
        json.encode(
          action.city,
        ),
      );

      await Future.delayed(Duration.zero, () {});

      store.dispatch(
        const GetAdzanAction(),
      );
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
