import 'package:flutter/material.dart';
import 'package:venom/presentation/tool_kit/converter_switch.dart';

class ToolKit extends StatefulWidget {
  const ToolKit({Key? key}) : super(key: key);

  @override
  _ToolKitState createState() => _ToolKitState();
}

class _ToolKitState extends State<ToolKit> {
  double inputValue = 0;
  String currentCalculator = "Gallons to Liters";
  bool isGallonsToLiters = true;
  String result = '';

  void handleSwitchValue(bool value) {
    setState(() {
      if (value) {
        currentCalculator = "Gallons to Liters";
        isGallonsToLiters = true;
      } else {
        currentCalculator = "Liters to Gallons";
        isGallonsToLiters = false;
      }
      result = ''; // Clear the result when switching
    });
  }

  void handleValueChange(String value) {
    setState(() {
      inputValue = double.tryParse(value) ?? 0;
      result = ''; // Clear the result when value changes
    });
  }

  void handleConvert() {
    setState(() {
      if (isGallonsToLiters) {
        double liters = inputValue / 0.264172;
        result = '$liters Liters.';
      } else {
        double gallons = inputValue * 0.264172;
        result = '$gallons Gallons.';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("{ }"),
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Text(currentCalculator),
                ConverterSwitch(
                  onChanged: handleSwitchValue,
                ),
              ],
            ),
            const SizedBox(height: 16),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Enter the value',
              ),
              onChanged: handleValueChange,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: handleConvert,
              child: const Text('Convert'),
            ),
            const SizedBox(height: 16),
            Text("Result: $result"),
            const SizedBox(
              height: 16,
            ),
            const Text("Gas prices"),
            const SizedBox(height: 16),
            const Text(
              'COP/Liter: x x x  - COP/Gal: x x x',
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
