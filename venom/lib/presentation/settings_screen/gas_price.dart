import 'package:flutter/material.dart';

class GasPrice extends StatelessWidget {
  const GasPrice({Key? key}) : super(key: key);
  final String currentGasPrice = "xxxx";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gas Price"),
      ),
      body: ListView(
        children: const [
          SizedBox(
            height: 25,
          ),
          Row(
            children: [
              Spacer(),
              Text("\$", style: TextStyle(fontSize: 48.0)),
              Text(
                "12367",
                style: TextStyle(fontSize: 48.0),
              ),
              Spacer(),
              Text("Brio, Tunja"),
              Spacer(),
            ],
          ),
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
