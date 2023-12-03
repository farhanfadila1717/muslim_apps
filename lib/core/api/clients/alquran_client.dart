import 'package:alquran_new/core/api/api_client.dart';
import 'package:alquran_new/core/models/alquran/alquran.dart';
import 'package:alquran_new/core/models/alquran/alquran_detail.dart';

class AlquranClient extends ApiClient {
  const AlquranClient();

  Future<List<Alquran>> getAlquranList() async {
    final response = await readJsonList(
      path: 'assets/json/alquran/alquran.json',
      serializer: Alquran.fromJson,
    );

    return response;
  }

  Future<AlquranDetail> getAlquranDetail({
    required String no,
  }) async {
    final response = await readJson(
      path: 'assets/json/detail_alquran/$no.json',
      serializer: AlquranDetail.fromJson,
    );

    return response;
  }
}
