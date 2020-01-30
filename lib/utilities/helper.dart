import 'package:intl/intl.dart';

class Helper {
  static String formatDate(String date) {
    final dateFormat = DateFormat('yyyy-MM-dd kk:mm:ss');
    return dateFormat.format(DateTime.parse(date));
  }
}
