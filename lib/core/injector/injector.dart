import 'package:alquran_new/common.dart';
import 'package:alquran_new/core/api/api.dart';
import 'package:alquran_new/core/controller/alquran_controller.dart';
import 'package:alquran_new/core/controller/city_controller.dart';
import 'package:alquran_new/core/controller/shared_preferences_controller.dart';
import 'package:alquran_new/core/navigation/router/router.dart';
import 'package:alquran_new/core/redux/store.dart';
import 'package:go_router/go_router.dart';

Future<void> inject([GetIt? getIt]) async {
  GetIt getIt0 = getIt ?? GetIt.instance;

  getIt0.registerSingleton<GlobalKey<NavigatorState>>(
    GlobalKey<NavigatorState>(),
  );

  getIt0.registerSingleton<GoRouter>(
    router,
  );

  getIt0.registerSingleton<Api>(
    Api.create(),
  );

  getIt0.registerSingleton<AlquranController>(
    AlquranController(
      alquranClient: getIt0.get<Api>().alquranClient,
    ),
  );

  getIt0.registerSingleton<CityController>(
    CityController(
      cityClient: getIt0.get<Api>().cityClient,
    ),
  );

  getIt0.registerSingleton<SharedPreferencesController>(
    SharedPreferencesController(),
  );

  getIt0.registerSingleton<Store<AppState>>(
    createStore(),
  );

  return;
}
