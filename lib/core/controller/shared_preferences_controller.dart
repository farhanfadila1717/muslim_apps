import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesController {
  late final SharedPreferences _preferences;

  SharedPreferences get preferences => _preferences;

  SharedPreferencesController() {
    SharedPreferences.getInstance().then(
      (value) => _preferences = value,
    );
  }
}
