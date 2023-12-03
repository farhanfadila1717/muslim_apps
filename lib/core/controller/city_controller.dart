import 'package:alquran_new/core/api/clients/city_client.dart';
import 'package:alquran_new/core/models/city/city.dart';

export 'package:alquran_new/core/models/city/city.dart';

class CityController {
  final CityClient cityClient;

  const CityController({
    required this.cityClient,
  });

  Future<List<City>> getCityList() => cityClient.getCityList();
}
