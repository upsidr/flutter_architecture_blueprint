import 'package:intl/intl.dart';

extension DateTimeFormatted on DateTime {
  String yMMMMEEEEd() => DateFormat.yMMMMEEEEd().format(this);
}
