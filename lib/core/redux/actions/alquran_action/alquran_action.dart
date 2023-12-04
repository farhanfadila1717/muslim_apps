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

class GetCurrentToggleData {
  const GetCurrentToggleData();
}

class SetTranslateToggleAction {
  final bool value;

  const SetTranslateToggleAction(this.value);
}

class SetLatinToggleAction {
  final bool value;

  const SetLatinToggleAction(this.value);
}

class SetAudioToggleAction {
  final bool value;

  const SetAudioToggleAction(this.value);
}
