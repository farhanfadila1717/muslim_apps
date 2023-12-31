import 'package:alquran_new/core/constants/constants.dart';
import 'package:alquran_new/core/models/adzan/adzan.dart';

class GetAdzanAction {
  const GetAdzanAction();
}

class SetAdzanAction {
  final List<Adzan> adzan;
  final Adzan? focusAdzan;

  const SetAdzanAction({
    required this.adzan,
    required this.focusAdzan,
  });
}

class SetAdzanStateActon {
  final StateStatus status;

  const SetAdzanStateActon(
    this.status,
  );
}
