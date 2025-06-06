enum PaymentMethod{
  ONLINE('online', 'online'),
  COD('cod', 'cod');
  final String label;
  final String value;

  // constructor
  const PaymentMethod(this.label, this.value);

}