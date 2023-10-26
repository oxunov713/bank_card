enum CardType{
  visa("Visa"),
  paypal("PayPal"),
  mastercard("MasterCard"),
  uzcard("UzCard"),
  humo("Humo");

  const CardType(this.type);
  final String type;
}

class CardModel {
  String fullName;
  String cardNumber;
  DateTime cardExpirationTime;
  CardType cardType;

  CardModel({
    required this.fullName,
    required this.cardNumber,
    required this.cardExpirationTime,
    required this.cardType,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CardModel &&
          runtimeType == other.runtimeType &&
          fullName == other.fullName &&
          cardNumber == other.cardNumber &&
          cardExpirationTime == other.cardExpirationTime &&
          cardType == other.cardType;

  @override
  int get hashCode =>
      fullName.hashCode ^
      cardNumber.hashCode ^
      cardExpirationTime.hashCode ^
      cardType.hashCode;

  @override
  String toString() {
    return 'CardModel{fullName: $fullName, cardNumber: $cardNumber, cardExpirationTime: $cardExpirationTime, cardType: $cardType}';
  }
}
