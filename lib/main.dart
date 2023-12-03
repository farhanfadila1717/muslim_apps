import 'package:alquran_new/app/app.dart';
import 'package:alquran_new/core/injector/injector.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await inject();

  runApp(const App());
}
