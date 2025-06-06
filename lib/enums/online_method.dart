enum OnlineMethod{
  PAYOS('PayOS', 'payos'),
  CARD('Card', 'card');

  final String label;
  final String value;

  // constructor
  const OnlineMethod(this.label, this.value);
}