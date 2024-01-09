class FuelPrice {
  final int? id;
  final double price;
  final String placeOfPurchase;

  FuelPrice({
    this.id,
    required this.price,
    required this.placeOfPurchase,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'price': price,
      'place_of_purchase': placeOfPurchase,
    };
  }

  @override
  String toString() {
    return 'FuelPrice{id: $id, price: $price, placeOfPurchase: $placeOfPurchase}';
  }
}
