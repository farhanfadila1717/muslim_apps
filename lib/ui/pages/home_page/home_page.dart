import 'package:alquran_new/common.dart';
import 'package:alquran_new/core/models/alquran/alquran.dart';
import 'package:alquran_new/core/navigation/action/navigation_actions.dart';
import 'package:alquran_new/ui/components/default_store_connector.dart';
import 'package:card_loading/card_loading.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:slide_countdown/slide_countdown.dart';

part 'home_page_action_mapper.dart';
part 'components/_alquran_section.dart';
part 'components/_app_bar.dart';

class HomePage extends StatelessActionMapper with HomePageActionMapper {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          _AppBar(),
          _AlquranSection(),
        ],
      ),
    );
  }
}
