import 'dart:convert';
import 'dart:io';

import 'package:alquran_new/core/models/alquran/alquran.dart';
import 'package:alquran_new/core/models/alquran/alquran_detail.dart';
import 'package:alquran_new/core/models/alquran/surah.dart';

void main() {
  final alquran = File(
    'assets/json/alquran/alquran.json',
  );

  final alquranJson = json.decode(alquran.readAsStringSync()) as List;

  for (int i = 1; i <= alquranJson.length; i++) {
    final Alquran alquran = Alquran.fromJson(
      alquranJson.elementAt(i - 1),
    );

    final surah = File(
      'assets/json/surah/$i.json',
    );

    final surahJson = json.decode(surah.readAsStringSync()) as List;
    final surahList = surahJson.map((e) => Surah.fromJson(e)).toList();

    final result = AlquranDetail(
      alquran: alquran,
      surah: surahList,
    );

    File('tools/results/$i.json').writeAsStringSync(
      json.encode(
        result,
      ),
      flush: true,
    );
  }
}
