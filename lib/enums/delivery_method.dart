import 'package:greenzone_customer/constants/variable_key.dart';
import 'package:greenzone_customer/extentions/iterable.dart';


enum DeliveryMethod {
  pickUp('Nhận tại cửa hàng', 'pickup', 'Mang đi'),
  delivery('Giao hàng tận nơi', 'delivery', 'Giao hàng');

  final String label;
  final String value;
  final String shortLabel;

  // constructor
  const DeliveryMethod(this.label, this.value, this.shortLabel);

  static String getShortLabelByValue(String value) {
    final found = DeliveryMethod.values.firstWhereOrNull(
      (it) => it.value == value
    );
    return found?.shortLabel ?? VariableKey.notFound;
  }
}
