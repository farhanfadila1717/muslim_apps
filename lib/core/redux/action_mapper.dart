import 'package:alquran_new/core/extensions/extensions.dart';
import 'package:alquran_new/core/redux/states/app_state/app_state.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:redux/redux.dart';

mixin class ActionMapper {
  Store<AppState> get store => getIt.get<Store<AppState>>();

  GetIt get getIt => GetIt.instance;

  void dispatch(dynamic action) => store.dispatch(action);

  void dispatches(List<dynamic> actions) => store.dispatches(actions);
}

abstract class StatefulActionMapper extends StatefulWidget with ActionMapper {
  const StatefulActionMapper({super.key});
}

abstract class StatelessActionMapper extends StatelessWidget with ActionMapper {
  const StatelessActionMapper({super.key});
}
