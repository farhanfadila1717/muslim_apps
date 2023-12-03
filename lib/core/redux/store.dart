import 'package:alquran_new/core/controller/alquran_controller.dart';
import 'package:alquran_new/core/controller/city_controller.dart';
import 'package:alquran_new/core/controller/shared_preferences_controller.dart';
import 'package:alquran_new/core/navigation/middleware/navigation_middleware.dart';
import 'package:alquran_new/core/redux/middlewares/middlewares.dart';
import 'package:alquran_new/core/redux/reducers/reducers.dart';
import 'package:alquran_new/core/redux/states/app_state/app_state.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:redux/redux.dart';

Store<AppState> createStore() {
  final getIt = GetIt.instance;
  final goRouter = getIt.get<GoRouter>();
  final navigatorKey = getIt.get<GlobalKey<NavigatorState>>();
  final cityController = getIt.get<CityController>();
  final sharedPreferencesController = getIt.get<SharedPreferencesController>();
  final alquranController = getIt.get<AlquranController>();

  return Store(
    allReducers,
    initialState: const AppState(),
    middleware: [
      AdzanMiddleware(),
      AlquranMiddleware(
        alquranController: alquranController,
        sharedPreferencesController: sharedPreferencesController,
      ),
      CityMiddleware(
        cityController: cityController,
        sharedPreferencesController: sharedPreferencesController,
      ),
      NavigationMiddleware(
        goRouter: goRouter,
        navigatorKey: navigatorKey,
      ),
    ],
  );
}
