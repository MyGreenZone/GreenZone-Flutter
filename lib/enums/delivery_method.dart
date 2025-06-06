enum DeliveryMethod {
  PICK_UP('Nhận tại cửa hàng', 'pickup', 'Mang đi'),
  DELIVERY('Giao hàng tận nơi', 'delivery', 'Giao hàng');

  final String label;
  final String value;
  final String shortLabel;

  // constructor
  const DeliveryMethod(this.label, this.value, this.shortLabel);

  static String getShortLabelByValue(String value) {
    return DeliveryMethod.values
        .firstWhere(
          (method) => method.value == value,
          orElse: () => DeliveryMethod.PICK_UP,
        )
        .shortLabel;
  }
}
