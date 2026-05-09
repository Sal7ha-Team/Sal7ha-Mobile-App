class CreditCard {
  final String? cardNumber;
  final String? cardholderName;
  final String? expiryDate;
  final String? cvv;
  final String? cardType;
  final String? icon;

  CreditCard({
    this.cardNumber,
    this.cardholderName,
    this.expiryDate,
    this.cvv,
    this.cardType,
    this.icon
  });

  factory CreditCard.fromJson(Map<String, dynamic> json) {
    return CreditCard(
      cardNumber: json['cardNumber'] as String,
      cardholderName: json['cardholderName'] as String,
      expiryDate: json['expiryDate'] as String,
      cvv: json['cvv'] as String,
      cardType: json['cardType'] as String,
      icon: json['icon'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'cardNumber': cardNumber,
      'cardholderName': cardholderName,
      'expiryDate': expiryDate,
      'cvv': cvv,
      'cardType': cardType,
      'icon': icon,
    };
  }
}
