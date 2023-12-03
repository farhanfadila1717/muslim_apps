import 'package:alquran_new/core/navigation/destination/navigation_destinations.dart';

class NavigateBackAction {
  const NavigateBackAction();
}

class RefreshRouteAction {
  const RefreshRouteAction();
}

class NavigateToNextAction {
  final String path;
  final Object? extra;

  const NavigateToNextAction(this.path, {this.extra});
}

class NavigateToAndReplaceAction {
  final String path;
  final Object? extra;

  const NavigateToAndReplaceAction(this.path, {this.extra});
}

class NavigateToRootAction {
  final String? path;
  final Object? extra;

  const NavigateToRootAction({this.path, this.extra});
}

class ShowDialogAction {
  final NavigationDestination destination;

  const ShowDialogAction({
    required this.destination,
  });
}

class ShowModalBottomSheetAction {
  final NavigationDestination destination;

  const ShowModalBottomSheetAction({
    required this.destination,
  });
}

class ShowSnackBarAction {
  final String message;

  const ShowSnackBarAction({
    required this.message,
  });
}
