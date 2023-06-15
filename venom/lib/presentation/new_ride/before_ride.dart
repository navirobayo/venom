import 'package:flutter/material.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';
import 'package:venom/presentation/new_ride/new_ride.dart';

class BeforeRide extends StatefulWidget {
  const BeforeRide({Key? key}) : super(key: key);

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
                child: ElevatedButton(
                  onPressed: () {
                    final selectedTime =
                        '${_dateTime.hour.toString().padLeft(2, '0')}:${_dateTime.minute.toString().padLeft(2, '0')}:${_dateTime.second.toString().padLeft(2, '0')}';
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            NewRide(duration: _getDuration(selectedTime)),
                      ),
                    );
                  },
                  child: const Icon(Icons.arrow_forward_ios_rounded),
                ),
              ),
            ],
          ),
        ));
  }

  int _getDuration(String selectedTime) {
    final List<String> timeParts = selectedTime.split(':');
    final int hours = int.parse(timeParts[0]);
    final int minutes = int.parse(timeParts[1]);
    final int seconds = int.parse(timeParts[2]);
    return hours * 3600 + minutes * 60 + seconds;
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
