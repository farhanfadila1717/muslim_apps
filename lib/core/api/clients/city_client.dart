import 'package:alquran_new/core/api/api_client.dart';
import 'package:alquran_new/core/models/city/city.dart';

class CityClient extends ApiClient {
  const CityClient();

  Future<List<City>> getCityList() async {
    final response = await readJsonList(
      path: 'assets/json/city/city.json',
      serializer: City.fromJson,
    );

    return response;
  }
}
