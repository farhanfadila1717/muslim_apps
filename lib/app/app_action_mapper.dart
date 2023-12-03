import 'package:alquran_new/common.dart';
import 'package:alquran_new/core/redux/actions/alquran_action/alquran_action.dart';
import 'package:alquran_new/core/redux/actions/city_action/city_action.dart';

mixin AppActionMapper on ActionMapper {
  void init() => dispatches(
        const [
          GetAlquranAction(),
          GetCityListAction(),
        ],
      );
}
