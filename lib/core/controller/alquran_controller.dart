import 'package:alquran_new/core/api/clients/alquran_client.dart';
import 'package:alquran_new/core/models/alquran/alquran.dart';
import 'package:alquran_new/core/models/alquran/alquran_detail.dart';

export 'package:alquran_new/core/models/city/city.dart';

class AlquranController {
  final AlquranClient alquranClient;

  const AlquranController({
    required this.alquranClient,
  });

  Future<List<Alquran>> getAlquranList() => alquranClient.getAlquranList();

  Future<AlquranDetail> getAlquranDetail({
    required String no,
  }) =>
      alquranClient.getAlquranDetail(
        no: no,
      );
}
