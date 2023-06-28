class RideObject {
  final int? id;
  final int timeTraveled;
  final double distanceTravelled;
  final double gasUsed;
  final double gasPercentage;
  final double gasPrice;
  final String date;
  final String time;

  RideObject({
    this.id,
    required this.timeTraveled,
    required this.distanceTravelled,
    required this.gasUsed,
    required this.gasPercentage,
    required this.gasPrice,
    required this.date,
    required this.time,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'time_traveled': timeTraveled,
      'distance_travelled': distanceTravelled,
      'gas_used': gasUsed,
      'gas_percentage': gasPercentage,
      'gas_price': gasPrice,
      'date': date,
      'time': time,
    };
  }
}
