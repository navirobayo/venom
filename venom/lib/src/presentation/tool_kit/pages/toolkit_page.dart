// ignore_for_file: library_private_types_in_public_api

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:venom/src/presentation/tool_kit/widgets/converter_switch_widget.dart';

@RoutePage(name: 'toolkit')
class ToolKit extends StatefulWidget {
  const ToolKit({super.key});

  @override
  _ToolKitState createState() => _ToolKitState();
}

class _ToolKitState extends State<ToolKit> {
  double inputValue = 0;
  String currentCalculator = 'Gallons to Liters';
  bool isGallonsToLiters = true;
  String result = '';

  // ignore: avoid_positional_boolean_parameters
  void handleSwitchValue(bool value) {
    setState(() {
      if (value) {
        currentCalculator = 'Gallons to Liters';
        isGallonsToLiters = true;
      } else {
        currentCalculator = 'Liters to Gallons';
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
        final liters = inputValue / 0.264172;
        result = '$liters Liters.';
      } else {
        final gallons = inputValue * 0.264172;
        result = '$gallons Gallons.';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tool Kit'),
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
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Theme.of(context).focusColor),
              ),
              onPressed: handleConvert,
              child: const Text('Convert'),
            ),
            const SizedBox(height: 16),
            Text('Result: $result'),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
