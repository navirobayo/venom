import 'package:flutter/material.dart';
import 'package:venom/components/database_helper.dart';

class ResultsScreen extends StatefulWidget {
  final String timeTraveled;
  final double gasLevel1;
  final double gasLevel2;
  final double odometer1;
  final double odometer2;

  const ResultsScreen(
      {Key? key,
      required this.timeTraveled,
      required this.gasLevel1,
      required this.gasLevel2,
      required this.odometer1,
      required this.odometer2})
      : super(key: key);

  @override
  State<ResultsScreen> createState() => _ResultsScreenState();
}

class _ResultsScreenState extends State<ResultsScreen> {
  double _distanceTravelled = 0.0;
  double gasUsed = 0.0;
  double gasPrice = 0.0;

  Future<double?> getFuelPriceFromDatabase() async {
    final db = await DatabaseHelper.instance.database;
    final result = await db.query('fuel_prices');

    if (result.isEmpty) return null;

    return result.first['price'] as double?;
  }

  Future<double?> getFuelCapacityFromDatabase() async {
    final db = await DatabaseHelper.instance.database;
    final result = await db.query('bike_info');

    if (result.isEmpty) return null;

    return result.first['fuel_capacity'] as double?;
  }

  void calculateDistanceTravelled() {
    _distanceTravelled = widget.odometer2 - widget.odometer1;
  }

  Future<void> calculateGasUsed() async {
    final fuelCapacity = await getFuelCapacityFromDatabase();
    setState(() {
      gasUsed = (widget.gasLevel2 - widget.gasLevel1) * (fuelCapacity ?? 0.0);
    });
  }

  Future<void> calculateGasPrice() async {
    final fuelPrice = await getFuelPriceFromDatabase() ?? 0.0;
    setState(() {
      gasPrice = gasUsed * fuelPrice;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Results"),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 25,
          ),
          Card(
            child: SizedBox(
              width: 150,
              height: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Time traveled: ${widget.timeTraveled}"),
                  Text('Distance traveled: $_distanceTravelled km'),
                  Text("Gas used: $gasUsed Gallons"),
                  Text('Money spent: $gasPrice'),
                  Text("Debug: ${widget.gasLevel1}"),
                  Text("Debug: ${widget.gasLevel2}"),
                  Text("Debug: ${widget.odometer1}"),
                  Text("Debug: ${widget.odometer2}"),
                ],
              ),
            ),
          ),
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                calculateDistanceTravelled();
                calculateGasUsed();
                calculateGasPrice();
              },
              child: const Text("Analyze ride"),
            ),
          )
        ],
      ),
    );
  }
}
