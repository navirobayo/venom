class Ride {
  final int? id;
  final String timeTraveled;
  final String distanceTravelled;
  final String gasUsed;
  final String gasPrice;
  final String averageSpeed;

  Ride(
      {this.id,
      required this.timeTraveled,
      required this.distanceTravelled,
      required this.gasUsed,
      required this.gasPrice,
      required this.averageSpeed});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'time_traveled': timeTraveled,
      'distance_travelled': distanceTravelled,
      'gas_used': gasUsed,
      'gas_price': gasPrice,
      'average_speed': averageSpeed,
    };
  }

  @override
  String toString() {
    return 'Vehicle{id: $id, timeTraveled: $timeTraveled, distanceTravelled: $distanceTravelled, gasUsed: $gasUsed, gasPrice: $gasPrice, averageSpeed: $averageSpeed}';
  }
}
