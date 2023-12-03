import 'package:adhan/adhan.dart';
import 'package:alquran_new/common.dart';
import 'package:alquran_new/core/models/adzan/adzan.dart';

class AdzanMiddleware extends MiddlewareClass<AppState> {
  AdzanMiddleware();

  @override
  void call(
    Store<AppState> store,
    dynamic action,
    NextDispatcher next,
  ) {
    if (action is GetAdzanAction) {
      _onGetAdzanAction(store, action);
    }

    next(action);
  }

  Future<void> _onGetAdzanAction(
    Store<AppState> store,
    GetAdzanAction action,
  ) async {
    try {
      final cityState = store.state.cityState;
      final city = cityState.selectedCity;

      if (city == null) {
        throw 'Get Adzan failed because selected city is null';
      }

      final coordinates = Coordinates(
        double.parse(city.lat),
        double.parse(city.lng),
      );

      final params = CalculationParameters(
        fajrAngle: 20.0,
        maghribAngle: 4.5,
        ishaAngle: 0,
      );

      final prayerTimes = PrayerTimes.today(
        coordinates,
        params,
      );

      final now = DateTime.now();

      final adzan = [
        Adzan(
          name: 'Subuh',
          time: prayerTimes.fajr,
        ),
        Adzan(
          name: 'Zuhur',
          time: prayerTimes.dhuhr,
        ),
        Adzan(
          name: 'Ashar',
          time: prayerTimes.dhuhr,
        ),
        Adzan(
          name: 'Maghrib',
          time: prayerTimes.maghrib,
        ),
        Adzan(
          name: 'Isya',
          time: prayerTimes.isha,
        ),
      ];

      final focusAdzan = adzan.where(
        (e) {
          final diffInMinutes = e.time.difference(now).inMinutes;

          return diffInMinutes > 0;
        },
      ).firstOrNull;

      store.dispatch(
        SetAdzanAction(
          adzan: adzan,
          focusAdzan: focusAdzan,
        ),
      );
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
