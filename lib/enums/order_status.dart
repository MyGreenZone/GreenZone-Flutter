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
    final status = OrderStatus.values.where((it) => it.value == value).firstOrNull;
    return status?.label ?? 'Not found';
  }
}
