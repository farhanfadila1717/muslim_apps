import 'package:alquran_new/core/models/city/city.dart';
import 'package:alquran_new/ui/dialogs/city_bottom_sheet.dart';
import 'package:flutter/widgets.dart';

abstract class NavigationDestination {
  final Key? key;

  const NavigationDestination({this.key});

  Widget builder(BuildContext context);
}

class CityBottomSheetDestination extends NavigationDestination {
  const CityBottomSheetDestination({
    super.key,
    required this.city,
  });

  final City city;

  @override
  Widget builder(BuildContext context) => CityBottomSheet(
        key: key,
        city: city,
      );
}
