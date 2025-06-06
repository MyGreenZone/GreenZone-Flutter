import 'package:greenzone_customer/constants/variable_key.dart';
import 'package:greenzone_customer/extentions/iterable.dart';

enum OrderStatus {
  awaitingPayment("Chờ thanh toán", "awaitingPayment"),
  pendingConfirmation("Chờ xác nhận", "pendingConfirmation"),
  processing("Đang chuẩn bị", "processing"),
  readyForPickup("Chờ lấy hàng", "readyForPickup"),
  shippingOrder("Đang giao hàng", "shippingOrder"),
  completed("Hoàn thành", "completed"),
  cancelled("Đã hủy", "cancelled");

  final String label;
  final String value;

  // constructor
  const OrderStatus(this.label, this.value);

  static List<String> getValues() {
    return OrderStatus.values.map((it) => it.value).toList();
  }

  static List<String> getLabels() {
    return OrderStatus.values.map((it) => it.label).toList();
  }

  static String getLabelByValue(String value) {
    final status = OrderStatus.values.firstWhereOrNull(
      (it) => it.value == value,
    );
    return status?.label ?? VariableKey.notFound;
  }

  static MessageInfo getMessageInfoByStatus(OrderStatus status) {
    switch (status) {
      case awaitingPayment:
        return const MessageInfo('success', 'warning');

      case pendingConfirmation:
        return const MessageInfo('success', 'success');

      case processing:
      case shippingOrder:
        return const MessageInfo('info', 'info');

      case readyForPickup:
      case completed:
        return const MessageInfo('success', 'success');

      case cancelled:
        return const MessageInfo('danger', 'danger');
    }
  }
}

class MessageInfo {
  final String type;
  final String icon;

  // constructor
  const MessageInfo(this.type, this.icon);
}
