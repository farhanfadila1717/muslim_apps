import 'package:alquran_new/core/redux/reducers/adzan_reducer/adzan_reducer.dart';
import 'package:alquran_new/core/redux/reducers/alquran_reducer/alquran_reducer.dart';
import 'package:alquran_new/core/redux/reducers/city_reducer/city_reducer.dart';
import 'package:alquran_new/core/redux/states/app_state/app_state.dart';
import 'package:redux/redux.dart';

final allReducers = combineReducers<AppState>([
  adzanReducer,
  alquranReducer,
  cityReducer,
]);
