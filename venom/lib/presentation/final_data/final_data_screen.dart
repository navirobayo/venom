import 'package:flutter/material.dart';
import 'package:venom/presentation/results_screen/results_screen.dart';

class FinalData extends StatefulWidget {
  final String timeTraveled;
  final double gasLevel1;
  final double odometer1;

  const FinalData(
      {Key? key,
      required this.timeTraveled,
      required this.gasLevel1,
      required this.odometer1})
      : super(key: key);

  @override
  State<FinalData> createState() => _FinalDataState();
}

class _FinalDataState extends State<FinalData> {
  double _gasLevel2 = 0.5;
  final odometer2 = TextEditingController();
  double gasUsed = 0.0;
  double gasPrice = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Final Data"),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: TextField(
              controller: odometer2,
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
                final enteredOdometer2 = double.tryParse(odometer2.text) ?? 0.0;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultsScreen(
                      timeTraveled: widget.duration,
                      gasLevel1: _gasLevel,
                      odometer1: widget.odometer1,
                      odometer2: enteredOdometer2,
                    ),
                  ),
                );
              },
              child: const Text("Results"),
            ),
          ),
        ],
      ),
    );
  }
}
