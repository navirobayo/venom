import 'package:flutter/material.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';

class BeforeRide extends StatefulWidget {
  const BeforeRide({super.key});

  @override
  State<BeforeRide> createState() => _BeforeRideState();
}

class _BeforeRideState extends State<BeforeRide> {
  DateTime _dateTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Time Picker Spinner"),
        ),
        body: Container(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            children: <Widget>[
              hourMinuteSecond(),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 50),
                child: Text(
                  '${_dateTime.hour.toString().padLeft(2, '0')}:${_dateTime.minute.toString().padLeft(2, '0')}:${_dateTime.second.toString().padLeft(2, '0')}',
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ));
  }

  Widget hourMinuteSecond() {
    return TimePickerSpinner(
      isShowSeconds: true,
      onTimeChange: (time) {
        setState(() {
          _dateTime = time;
        });
      },
    );
  }
}
