import 'package:intl/intl.dart';
class TextFormatter {

  static String formatCurrency(num? amount){
    if(amount == null) return 'Có cái nịt';

    final formatter = NumberFormat.currency(locale: 'vi_VN', symbol: '₫');
    return formatter.format(amount).replaceAll(RegExp(r'\s?₫'), '₫');

  }
  static String formatQuantity(int quantity) {
    return quantity == 0 ? '0' : quantity.toString().padLeft(2, '0');
  }

  static String formatQuantityProduct(int quantity) {
    return quantity > 1 ? '${quantity} products' : '${quantity} product';
  }
}
