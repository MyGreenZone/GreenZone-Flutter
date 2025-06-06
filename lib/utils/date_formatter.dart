import 'package:intl/intl.dart';

class DateFormatter{
  static String formatDate(DateTime date){
    final locale = Intl.getCurrentLocale();

    final dateFormatter = DateFormat('HH:mm - dd/MM/yyyy', locale);
    return dateFormatter.format(date);
  }
}