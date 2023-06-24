import 'package:flutter/material.dart';
import 'package:venom/components/fuel_prices_database.dart';

class GasPrice extends StatefulWidget {
  const GasPrice({Key? key}) : super(key: key);

  @override
  State<GasPrice> createState() => _GasPriceState();
}

class _GasPriceState extends State<GasPrice> {
  String fuelPrice = "0.0";
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gas Price"),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 25,
          ),
          Row(
            children: [
              const Spacer(),
              const Text("\$", style: TextStyle(fontSize: 48.0)),
              Text(
                fuelPrice,
                style: const TextStyle(fontSize: 48.0),
              ),
              const Spacer(),
              const Text("Brio, Tunja"),
              const Spacer(),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          TextField(
            controller: _controller,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter the current gas price',
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
              final enteredPrice = double.tryParse(_controller.text) ?? 0.0;
              await DatabaseHelper.instance.insertFuelPrice(enteredPrice);
            },
            child: const Text("Save"),
          ),
        ],
      ),
    );
  }
}
