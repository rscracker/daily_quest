import 'package:intl/intl.dart';

class Utils {
  Utils._();

  static String formatDate(DateTime date) {
    DateFormat dateFormat = DateFormat("yyyy-mm-dd");
    return dateFormat.format(date);
  }
}
