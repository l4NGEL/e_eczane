class PaymentInfo {
  String cardNumber;
  String name;
  String cvv;

  PaymentInfo({required this.cardNumber, required this.name, required this.cvv});
}
PaymentInfo paymentInfo = PaymentInfo(
  cardNumber: "1234567890123456", // örnek değerler
  name: "John Doe",
  cvv: "1234",
);
