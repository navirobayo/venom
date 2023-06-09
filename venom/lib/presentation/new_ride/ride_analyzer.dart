import 'package:flutter/material.dart';

class NewRide extends StatefulWidget {
  const NewRide({super.key});

  @override
  State<NewRide> createState() => _NewRideState();
}

class _NewRideState extends State<NewRide> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fuel Efficiency"),
      ),
      body: Center(
        child: ListView(children: [
          const Card(
            child: SizedBox(
              width: 150,
              height: 150,
              child: Center(
                  child: Text("Here goes the animation with the result")),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
          const SizedBox(
            height: 50,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'How much fuel can you bike take?',
              ),
              textAlign: TextAlign.center,
              textAlignVertical: TextAlignVertical.center,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Current KM in odometer',
              ),
              textAlign: TextAlign.center,
              textAlignVertical: TextAlignVertical.center,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Fuel price',
              ),
              textAlign: TextAlign.center,
              textAlignVertical: TextAlignVertical.center,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          ElevatedButton(
              onPressed: () {
                print("test");
              },
              child: const Text("Start the ride")),
          const SizedBox(
            height: 50,
          ),
          const SizedBox(
            height: 50,
          ),
        ]),
      ),
    );
  }
}
