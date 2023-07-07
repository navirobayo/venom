import 'package:flutter/material.dart';
import 'package:venom/components/ride_object.dart';
import 'package:venom/components/rides_database_final.dart';

class ResultsScreen extends StatefulWidget {
  final String timeTraveled;
  final double gasLevel1;
  final double gasLevel2;
  final double odometer1;
  final double odometer2;
  final double defaultPrice;
  final double defaultTankSize;

  const ResultsScreen({
    Key? key,
    required this.timeTraveled,
    required this.gasLevel1,
    required this.gasLevel2,
    required this.odometer1,
    required this.odometer2,
    required this.defaultPrice,
    required this.defaultTankSize,
  }) : super(key: key);

  @override
  State<ResultsScreen> createState() => _ResultsScreenState();
}

class _ResultsScreenState extends State<ResultsScreen> {
  double _distanceTravelled = 0.0;
  double gasUsed = 0.0;
  double gasAvailable = 0.0;
  double gasPrice = 0.0;
  double averageSpeed = 0.0;

  void calculateDistanceTravelled() {
    setState(() {
      _distanceTravelled = widget.odometer2 - widget.odometer1;
    });
  }

  double calculateGasUsed() {
    final fuelCapacity = widget.defaultTankSize;
    final gasUsed = (widget.gasLevel1 - widget.gasLevel2) * fuelCapacity;
    return gasUsed;
  }

  double calculateGasPrice(double gasUsed) {
    final gasPrice = gasUsed * widget.defaultPrice;
    return gasPrice;
  }

  double calculateAverageSpeed() {
    final timeTraveled = widget.timeTraveled;
    final distanceTravelled = _distanceTravelled;
    final hours = int.parse(timeTraveled.split(":")[0]);
    final minutes = int.parse(timeTraveled.split(":")[1]);
    final seconds = int.parse(timeTraveled.split(":")[2]);
    final totalSeconds = (hours * 3600) + (minutes * 60) + seconds;
    final averageSpeed = (distanceTravelled / totalSeconds) * 3600;
    return averageSpeed;
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
                  Text("Fuel used in this ride: $gasUsed Gallons"),
                  Text('Money spent in this ride: \$$gasPrice'),
                  Text("Average speed: $averageSpeed km/h"),
                ],
              ),
            ),
          ),
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                calculateDistanceTravelled();
                final gasUsed = calculateGasUsed();
                final gasPrice = calculateGasPrice(gasUsed);
                final averageSpeed = calculateAverageSpeed();
                setState(() {
                  this.gasUsed = gasUsed;
                  this.gasPrice = gasPrice;
                  this.averageSpeed = averageSpeed;
                });
              },
              child: const Text("Analyze ride"),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Expanded(
            child: ElevatedButton(
              onPressed: () async {
                final ride = Ride(
                  timeTraveled: widget.timeTraveled,
                  distanceTravelled: _distanceTravelled.toStringAsFixed(2),
                  gasUsed: gasUsed.toStringAsFixed(2),
                  gasPrice: gasPrice.toStringAsFixed(2),
                  averageSpeed: averageSpeed.toStringAsFixed(2),
                );
                final ridesDatabase = RidesDatabaseFinal();
                await ridesDatabase.insertRide(ride);
                Navigator.pop(context);
              },
              child: const Text("Save and close"),
            ),
          )
        ],
      ),
    );
  }
}
