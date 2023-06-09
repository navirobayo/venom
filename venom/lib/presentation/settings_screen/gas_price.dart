import 'package:flutter/material.dart';

class GasPrice extends StatelessWidget {
  const GasPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gas Prices History"),
      ),
      body: ListView(
        children: const [
          SizedBox(
            height: 25,
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter the current gas price',
            ),
            textAlign: TextAlign.center,
            textAlignVertical: TextAlignVertical.center,
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
