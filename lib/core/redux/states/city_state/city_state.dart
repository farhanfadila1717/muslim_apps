import 'package:alquran_new/core/models/city/city.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'city_state.freezed.dart';

@freezed
class CityState with _$CityState {
  const CityState._();

  const factory CityState({
    City? selectedCity,
    @Default([]) List<City> citys,
  }) = _CityState;
}
