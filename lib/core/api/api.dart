import 'package:alquran_new/core/api/clients/alquran_client.dart';
import 'package:alquran_new/core/api/clients/city_client.dart';

class Api {
  final AlquranClient alquranClient;
  final CityClient cityClient;

  const Api({
    required this.alquranClient,
    required this.cityClient,
  });

  factory Api.create() => const Api(
        alquranClient: AlquranClient(),
        cityClient: CityClient(),
      );
}
