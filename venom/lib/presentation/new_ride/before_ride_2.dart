import 'package:flutter/material.dart';
import 'package:venom/presentation/new_ride/new_ride.dart';

class KmInBike extends StatelessWidget {
  const KmInBike({Key? key, required this.duration, required this.userName})
      : super(key: key);
  final int duration;
  final String userName;

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
              Center(child: Text("Drive safe, $userName")),
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
              Row(
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
              Container(
                margin: const EdgeInsets.symmetric(vertical: 35),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NewRide(
                          duration: duration,
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
