import 'package:flutter/material.dart';

class GasCapacity extends StatelessWidget {
  const GasCapacity({Key? key}) : super(key: key);
  final String currentGasPrice = "xxxx";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gas Capacity"),
      ),
      body: ListView(
        children: const [
          SizedBox(
            height: 25,
          ),
          Row(
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
          SizedBox(
            height: 25,
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter the gas capacity of your bike',
            ),
            textAlign: TextAlign.center,
            textAlignVertical: TextAlignVertical.center,
            keyboardType: TextInputType.number,
          ),
          SizedBox(
            height: 25,
          ),
          ElevatedButton(
            onPressed: null,
            child: Text("Update"),
          ),
        ],
      ),
    );
  }
}
