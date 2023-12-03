import 'package:intl/intl.dart';

extension DateTimeExtensions on DateTime {
  String get hhmm => DateFormat('hh:mm').format(this);
}
