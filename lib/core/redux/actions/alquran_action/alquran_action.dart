import 'package:alquran_new/core/models/alquran/alquran.dart';

class GetAlquranAction {
  const GetAlquranAction();
}

class GetHightligtAlquranAction {
  const GetHightligtAlquranAction();
}

class SetAlquranAction {
  final List<Alquran> alquran;

  const SetAlquranAction({
    required this.alquran,
  });
}

class SetHightligtAlquranAction {
  final List<Alquran> hightlightAlquran;

  const SetHightligtAlquranAction({
    required this.hightlightAlquran,
  });
}
