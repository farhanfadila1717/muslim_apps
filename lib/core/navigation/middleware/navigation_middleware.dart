import 'package:alquran_new/core/navigation/action/navigation_actions.dart';
import 'package:alquran_new/core/redux/states/app_state/app_state.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:redux/redux.dart';

class NavigationMiddleware extends MiddlewareClass<AppState> {
  final GoRouter goRouter;
  final GlobalKey<NavigatorState> navigatorKey;

  NavigationMiddleware({
    required this.goRouter,
    required this.navigatorKey,
  });

  BuildContext get context => navigatorKey.currentContext!;

  @override
  void call(Store<AppState> store, dynamic action, NextDispatcher next) {
    if (action is NavigateToNextAction) {
      _onNavigateToNextAction(store, action);
    } else if (action is NavigateToAndReplaceAction) {
      _onNavigateToAndReplaceAction(store, action);
    } else if (action is NavigateBackAction) {
      _onNavigateBackAction(store, action);
    } else if (action is ShowDialogAction) {
      _onShowDialogAction(store, action);
    } else if (action is RefreshRouteAction) {
      _onRefreshRouteAction(store, action);
    } else if (action is NavigateToRootAction) {
      _onNavigateToRootAction(store, action);
    } else if (action is ShowSnackBarAction) {
      _onShowSnackBarAction(store, action);
    } else if (action is ShowModalBottomSheetAction) {
      _onShowModalBottomSheetAction(store, action);
    }
    next(action);
  }

  void _onNavigateToNextAction(
    Store<AppState> store,
    NavigateToNextAction action,
  ) =>
      goRouter.push(action.path, extra: action.extra);

  void _onNavigateToAndReplaceAction(
    Store<AppState> store,
    NavigateToAndReplaceAction action,
  ) =>
      goRouter.pushReplacement(action.path, extra: action.extra);

  void _onNavigateBackAction(
    Store<AppState> store,
    NavigateBackAction action,
  ) =>
      Navigator.of(context).pop();

  void _onShowDialogAction(
    Store<AppState> store,
    ShowDialogAction action,
  ) {
    showDialog(context: context, builder: action.destination.builder);
  }

  void _onShowSnackBarAction(
    Store<AppState> store,
    ShowSnackBarAction action,
  ) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(action.message),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  void _onShowModalBottomSheetAction(
    Store<AppState> store,
    ShowModalBottomSheetAction action,
  ) =>
      showModalBottomSheet(
        context: context,
        builder: action.destination.builder,
      );

  void _onRefreshRouteAction(
    Store<AppState> store,
    RefreshRouteAction action,
  ) =>
      goRouter.refresh();

  void _onNavigateToRootAction(
    Store<AppState> store,
    NavigateToRootAction action,
  ) async {
    while (context.canPop()) {
      Future.sync(() => Navigator.pop(context));
    }
    context.go(
      action.path ?? '/',
      extra: action.extra,
    );
  }
}
