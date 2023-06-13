import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:venom/components/timer_widget.dart';

class NewRide extends StatefulWidget {
  const NewRide({super.key});

  @override
  State<NewRide> createState() => _NewRideState();
}

class _NewRideState extends State<NewRide> {
  final int _duration = 10;
  final CountDownController _controller = CountDownController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ride Analyzer"),
      ),
      body: Center(
        child: ListView(children: [
          const SizedBox(
            height: 25,
          ),
          TimerWidget(duration: _duration, controller: _controller),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Radio(
                value: 0,
                groupValue: 0,
                onChanged: (value) {},
              ),
              const Text("Half tank"),
              Radio(
                value: 1,
                groupValue: 0,
                onChanged: (value) {},
              ),
              const Text("Full tank"),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Current KM in odometer',
              ),
              textAlign: TextAlign.center,
              textAlignVertical: TextAlignVertical.center,
              keyboardType: TextInputType.number,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 30,
              ),
              _button(
                title: "Start",
                onPressed: () => _controller.start(),
              ),
              const SizedBox(
                width: 10,
              ),
              _button(
                title: "Pause",
                onPressed: () => _controller.pause(),
              ),
              const SizedBox(
                width: 10,
              ),
              _button(
                title: "Resume",
                onPressed: () => _controller.resume(),
              ),
              const SizedBox(
                width: 10,
              ),
              _button(
                title: "Restart",
                onPressed: () => _controller.restart(duration: _duration),
              ),
            ],
          ),
        ]),
      ),
    );
  }

  Widget _button({required String title, VoidCallback? onPressed}) {
    return Expanded(
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(Theme.of(context).focusColor),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
