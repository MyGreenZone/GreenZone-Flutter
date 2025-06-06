enum OnlineMethod{
  payOS('PayOS', 'payos'),
  card('Card', 'card');

  final String label;
  final String value;

  // constructor
  const OnlineMethod(this.label, this.value);
}