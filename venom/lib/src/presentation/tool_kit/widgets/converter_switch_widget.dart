import 'package:flutter/material.dart';

class ConverterSwitch extends StatefulWidget {

  const ConverterSwitch({
    required this.onChanged, super.key,
  });
  final ValueChanged<bool> onChanged;

  @override
  State<ConverterSwitch> createState() => _ConverterSwitchState();
}

class _ConverterSwitchState extends State<ConverterSwitch> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: light,
      activeColor: Theme.of(context).colorScheme.onBackground,
      onChanged: (bool value) {
        setState(() {
          light = value;
          widget.onChanged(value);
        });
      },
    );
  }
}
