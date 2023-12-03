import 'dart:convert';

import 'package:flutter/services.dart';

typedef Serializer<T> = T Function(Map<String, dynamic>);

class ApiClient {
  const ApiClient();

  Future<T> readJson<T>({
    required String path,
    required Serializer<T> serializer,
  }) async {
    final response = await rootBundle.loadString(path);

    final data = await json.decode(response);

    return serializer(data);
  }

  Future<List<T>> readJsonList<T>({
    required String path,
    required Serializer<T> serializer,
  }) async {
    final response = await rootBundle.loadString(path);

    final data = await json.decode(response);

    List<T> temp = [];

    for (var i in data) {
      temp.add(serializer(i));
    }

    return temp;
  }
}
