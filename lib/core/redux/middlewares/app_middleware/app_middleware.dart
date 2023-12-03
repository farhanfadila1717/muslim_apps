import 'dart:async';

import 'package:alquran_new/common.dart';
import 'package:alquran_new/core/redux/actions/actions.dart';

class AppMiddleware extends MiddlewareClass<AppState> {
  AppMiddleware();

  @override
  void call(
    Store<AppState> store,
    dynamic action,
    NextDispatcher next,
  ) {
    if (action is DelayAction) {
      _onDelayAction(store, action);
    }
    next(action);
  }

  void _onDelayAction(
    Store<AppState> store,
    DelayAction action,
  ) =>
      unawaited(
        Future.delayed(
          action.duration,
          () => store.dispatch(action.action),
        ),
      );
}
