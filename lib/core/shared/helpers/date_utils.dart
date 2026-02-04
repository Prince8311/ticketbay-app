import 'package:intl/intl.dart';

class DateItem {
  final String day;
  final String date;
  final String month;
  final String iso;

  DateItem({
    required this.day,
    required this.date,
    required this.month,
    required this.iso,
  });
}

class DateUtilsHelper {
  static List<DateItem> getNextDates({int days = 10}) {
    final today = DateTime.now();
    final base = DateTime(today.year, today.month, today.day);

    return List.generate(days, (i) {
      final date = base.add(Duration(days: i));
      return DateItem(
        day: DateFormat('EEE').format(date).toUpperCase(),
        date: DateFormat('dd').format(date),
        month: DateFormat('MMM').format(date),
        iso: DateFormat('yyyy-MM-dd').format(date),
      );
    });
  }
}
