import 'package:flutter/material.dart';
import 'package:venom/components/database_helper.dart';

class ResultsScreen extends StatefulWidget {
  final String timeTraveled;
  final double gasLevel1;
  final double odometer1;

  const ResultsScreen(
      {Key? key,
      required this.timeTraveled,
      required this.gasLevel1,
      required this.odometer1})
      : super(key: key);

  @override
  State<ResultsScreen> createState() => _ResultsScreenState();
}

class _ResultsScreenState extends State<ResultsScreen> {
  double _gasLevel2 = 0.5;
  final _odometer2Controller = TextEditingController();
  double _distanceTravelled = 0.0;
  double gasUsed = 0.0;
  double gasPrice = 0.0;

  void calculateDistanceTravelled() {
    final double odometer2 = double.parse(_odometer2Controller.text);
    _distanceTravelled = odometer2 - widget.odometer1;
  }

  Future<void> calculateGasUsed() async {
    final fuelCapacity = await getFuelCapacityFromDatabase();
    setState(() {
      gasUsed = (_gasLevel2 - widget.gasLevel1) * fuelCapacity!;
    });
  }

  Future<void> calculateGasPrice() async {
    final fuelPrice = await getFuelPriceFromDatabase() ?? 0;
    setState(() {
      gasPrice = gasUsed! * fuelPrice;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ride Results"),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: TextField(
              controller: _odometer2Controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'KM that you see in the odometer',
              ),
              textAlign: TextAlign.center,
              textAlignVertical: TextAlignVertical.center,
              keyboardType: TextInputType.number,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          //Slicer to choose the gas level
          const Text("Gas level:"),
          Slider(
            value: _gasLevel2,
            onChanged: (value) {
              setState(() {
                _gasLevel2 = value;
              });
            },
            min: 0,
            max: 1,
            divisions: 10,
            label: _gasLevel2 == 0
                ? "Empty tank"
                : _gasLevel2 == 1
                    ? "Full tank"
                    : "",
          ),
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                calculateDistanceTravelled();
                calculateGasUsed();
                calculateGasPrice();
                setState(() {});
              },
              child: const Text("Results"),
            ),
          ),
          Card(
            child: SizedBox(
              width: 150,
              height: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Gas used: $gasUsed Gallons"),
                  Text("Time traveled: ${widget.timeTraveled}"),
                  Text('Distance traveled: $_distanceTravelled km'),
                  Text('Money spent: $gasPrice'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
