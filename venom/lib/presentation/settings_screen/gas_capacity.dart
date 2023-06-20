import 'package:flutter/material.dart';
import 'package:venom/components/database_helper.dart';

class GasCapacity extends StatefulWidget {
  const GasCapacity({Key? key}) : super(key: key);

  @override
  State<GasCapacity> createState() => _GasCapacityState();
}

class _GasCapacityState extends State<GasCapacity> {
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
            onPressed: () async {
              final enteredCapacity = double.tryParse(_controller.text) ?? 0.0;
              await DatabaseHelper.instance.insertFuelCapacity(enteredCapacity);
            },
            child: const Text("Update"),
          ),
        ],
      ),
    );
  }
}
