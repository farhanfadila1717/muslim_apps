import 'package:alquran_new/common.dart';
import 'package:alquran_new/core/controller/alquran_controller.dart';
import 'package:alquran_new/core/controller/shared_preferences_controller.dart';
import 'package:alquran_new/core/redux/actions/actions.dart';

const _kKey = 'ALQURAN';

class AlquranMiddleware extends MiddlewareClass<AppState> {
  final AlquranController alquranController;
  final SharedPreferencesController sharedPreferencesController;

  AlquranMiddleware({
    required this.alquranController,
    required this.sharedPreferencesController,
  });

  @override
  void call(
    Store<AppState> store,
    dynamic action,
    NextDispatcher next,
  ) {
    if (action is GetAlquranAction) {
      _onGetAlquranAction(store, action);
    } else if (action is GetHightligtAlquranAction) {
      _onGetHightligtAlquranAction(store, action);
    }

    next(action);
  }

  Future<void> _onGetAlquranAction(
    Store<AppState> store,
    GetAlquranAction action,
  ) async {
    try {
      if (store.state.alquranState.alquran.isNotEmpty) return;

      final response = await alquranController.getAlquranList();

      store.dispatches([
        SetAlquranAction(
          alquran: response,
        ),
      ]);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> _onGetHightligtAlquranAction(
    Store<AppState> store,
    GetHightligtAlquranAction action,
  ) async {
    try {
      if (store.state.alquranState.alquran.isNotEmpty) return;

      final response = await alquranController.getAlquranList();

      store.dispatches([
        SetAlquranAction(
          alquran: response,
        ),
        const DelayAction(
          duration: Duration(milliseconds: 100),
          action: GetHightligtAlquranAction(),
        ),
      ]);
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
