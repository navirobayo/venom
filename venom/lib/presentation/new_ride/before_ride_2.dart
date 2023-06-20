import 'package:flutter/material.dart';
import 'package:venom/presentation/new_ride/new_ride.dart';

class KmInBike extends StatefulWidget {
  final int duration;
  final String userName;
  const KmInBike({
    Key? key,
    required this.duration,
    required this.userName,
  }) : super(key: key);

  @override
  State<KmInBike> createState() => _KmInBikeState();
}

class _KmInBikeState extends State<KmInBike> {
  double _gasLevel = 0.5;
  final _odometer1Controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Time Picker Spinner"),
        ),
        body: Container(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            children: <Widget>[
              Center(child: Text("Drive safe, ${widget.userName}")),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: TextField(
                  controller: _odometer1Controller,
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
                value: _gasLevel,
                onChanged: (value) {
                  setState(() {
                    _gasLevel = value;
                  });
                },
                min: 0,
                max: 1,
                divisions: 10,
                label: _gasLevel == 0
                    ? "Empty tank"
                    : _gasLevel == 1
                        ? "Full tank"
                        : "",
              ),

              Container(
                margin: const EdgeInsets.symmetric(vertical: 35),
                child: ElevatedButton(
                  onPressed: () {
                    final enteredOdometer1 =
                        double.tryParse(_odometer1Controller.text) ?? 0.0;
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NewRide(
                          duration: widget.duration,
                          gasLevel: _gasLevel,
                          odometer1: enteredOdometer1,
                        ),
                      ),
                    );
                  },
                  child: const Icon(Icons.arrow_forward_ios_rounded),
                ),
              ),
            ],
          ),
        ));
  }
}

//Good looking Radio buttons

/* Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Gas level:"),
                  Radio(
                    value: 0,
                    groupValue: 0,
                    onChanged: (value) {},
                  ),
                  const Text("Half tank"),
                  Radio(
                    value: 1,
                    groupValue: 0,
                    onChanged: (value) {},
                  ),
                  const Text("Full tank"),
                ],
              ),

              */ 
