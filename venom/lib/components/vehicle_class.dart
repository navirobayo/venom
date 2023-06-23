class Vehicle {
  final int? id;
  final String name;
  final String tankCapacity;

  Vehicle({this.id, required this.name, required this.tankCapacity});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'tank_capacity': tankCapacity,
    };
  }

  @override
  String toString() {
    return 'Vehicle{id: $id, name: $name, tankCapacity: $tankCapacity}';
  }
}
