import 'package:flutter/material.dart';

class ConverterSwitch extends StatefulWidget {
  final ValueChanged<bool> onChanged;

  const ConverterSwitch({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<ConverterSwitch> createState() => _ConverterSwitchState();
}

class _ConverterSwitchState extends State<ConverterSwitch> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: light,
      activeColor: Colors.black,
      onChanged: (bool value) {
        setState(() {
          light = value;
          widget.onChanged(value);
        });
      },
    );
  }
}
