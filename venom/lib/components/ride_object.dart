class Ride {
  final int? id;
  final int timeTraveled;
  final double distanceTravelled;
  final double gasUsed;
  final double gasPercentage;
  final double gasPrice;
  final DateTime dateTime;

  Ride({
    this.id,
    required this.timeTraveled,
    required this.distanceTravelled,
    required this.gasUsed,
    required this.gasPercentage,
    required this.gasPrice,
    required this.dateTime,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'time_traveled': timeTraveled,
      'distance_travelled': distanceTravelled,
      'gas_used': gasUsed,
      'gas_percentage': gasPercentage,
      'gas_price': gasPrice,
      'date_time': dateTime.toIso8601String(),
    };
  }

  factory Ride.fromMap(Map<String, dynamic> map) {
    return Ride(
      id: map['id'] as int?,
      timeTraveled: map['time_traveled'] as int,
      distanceTravelled: map['distance_travelled'] as double,
      gasUsed: map['gas_used'] as double,
      gasPercentage: map['gas_percentage'] as double,
      gasPrice: map['gas_price'] as double,
      dateTime: DateTime.parse(map['date_time'] as String),
    );
  }
}
