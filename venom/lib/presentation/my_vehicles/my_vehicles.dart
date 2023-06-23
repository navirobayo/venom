import 'package:flutter/material.dart';

class MyVehicles extends StatefulWidget {
  const MyVehicles({Key? key}) : super(key: key);

  @override
  State<MyVehicles> createState() => _MyVehiclesState();
}

class _MyVehiclesState extends State<MyVehicles> {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gas Capacity"),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 25,
          ),
          const Row(
            children: [
              Spacer(),
              Text(
                "8.5",
                style: TextStyle(fontSize: 48.0),
              ),
              Text("-GAL", style: TextStyle(fontSize: 48.0)),
              Spacer(),
              Text("Ninja, 650"),
              Spacer(),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          TextField(
            controller: _controller,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter the gas capacity of your bike',
            ),
            textAlign: TextAlign.center,
            textAlignVertical: TextAlignVertical.center,
            keyboardType: TextInputType.number,
          ),
          const SizedBox(
            height: 25,
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Update"),
          ),
        ],
      ),
    );
  }
}
