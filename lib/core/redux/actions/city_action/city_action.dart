import 'package:alquran_new/core/controller/city_controller.dart';

class GetCityListAction {
  const GetCityListAction();
}

class GetCityAction {
  const GetCityAction();
}

class SetCityListAction {
  final List<City> citys;

  const SetCityListAction(
    this.citys,
  );
}

class SetCityAction {
  final City city;

  const SetCityAction(
    this.city,
  );
}
