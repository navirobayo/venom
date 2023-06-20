import 'package:flutter/material.dart';

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
          const Padding(
            padding: EdgeInsets.all(50.0),
            child: TextField(
              decoration: InputDecoration(
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
                // Function that adds the KM in odometer from the TextInput
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
                Text("Gas level: ${(_gasLevel2 * 100).round()}%"),
                Text('Odometer before ride: ${widget.odometer1}'),
                Text("Time traveled: ${widget.timeTraveled}"),
                Text('Money spent: xxxx'),
                Text('Price per liter: xxxx '),
                Text('Price per km: xxxx'),
                Text('Liters consumed: xxxx'),
                Text('Gallons consumed: xxxx'),
                Text('Distance traveled: xxxx'),
                Text('Average speed: xxxx'),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
