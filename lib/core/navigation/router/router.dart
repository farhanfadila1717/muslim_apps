import 'package:alquran_new/ui/pages/alquran/detail_alquran_page/detail_alquran_page.dart';
import 'package:alquran_new/ui/pages/city_page/city_page.dart';
import 'package:alquran_new/ui/pages/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  navigatorKey: GetIt.instance.get<GlobalKey<NavigatorState>>(),
  routes: [
    GoRoute(
      path: '/',
      builder: (_, __) => const HomePage(),
    ),
    GoRoute(
      path: '/city',
      builder: (_, __) => const CityPage(),
    ),
    GoRoute(
      path: '/alquran/:no',
      builder: (_, state) => DetailAlquranPage(
        no: state.pathParameters['no']!,
      ),
    ),
  ],
);
