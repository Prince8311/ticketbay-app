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

String? normalizeApiDate(String? date) {
  if (date == null || date.isEmpty) return null;

  try {
    // API format: "10 Feb, 2026"
    final parsed = DateFormat('dd MMM, yyyy').parse(date);
    return DateFormat('yyyy-MM-dd').format(parsed);
  } catch (_) {
    return null;
  }
}

String formatSelectedDate(DateItem item) {
  final year = item.iso.split('-').first;
  return '${item.date} ${item.month}, $year';
}

String formatDay(String? day) {
  if (day == null || day.isEmpty) return '-';
  return day[0].toUpperCase() + day.substring(1).toLowerCase();
}
