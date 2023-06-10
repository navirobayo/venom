import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';

class NewRide extends StatefulWidget {
  const NewRide({super.key});

  @override
  State<NewRide> createState() => _NewRideState();
}

class _NewRideState extends State<NewRide> {
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
          CircularCountDownTimer(
            duration: 10,
            initialDuration: 0,
            controller: CountDownController(),
            width: MediaQuery.of(context).size.width / 3,
            height: MediaQuery.of(context).size.height / 3,
            ringColor: Theme.of(context).focusColor,
            ringGradient: null,
            fillColor: Colors.purpleAccent[100]!,
            fillGradient: null,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            backgroundGradient: null,
            strokeWidth: 20.0,
            strokeCap: StrokeCap.round,
            textStyle:
                const TextStyle(fontSize: 33.0, fontWeight: FontWeight.bold),
            textFormat: CountdownTextFormat.S,
            isReverse: false,
            isReverseAnimation: false,
            isTimerTextShown: true,
            autoStart: false,
            onStart: () {
              debugPrint('Countdown Started');
            },
            onComplete: () {
              debugPrint('Countdown Ended');
            },
            onChange: (String timeStamp) {
              debugPrint('Countdown Changed $timeStamp');
            },
            timeFormatterFunction: (defaultFormatterFunction, duration) {
              if (duration.inSeconds == 0) {
                return "Start";
              } else {
                return Function.apply(defaultFormatterFunction, [duration]);
              }
            },
          ),
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
            height: 50,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'How much fuel can you bike take?',
              ),
              textAlign: TextAlign.center,
              textAlignVertical: TextAlignVertical.center,
              keyboardType: TextInputType.number,
            ),
          ),
          const SizedBox(
            height: 50,
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
        ]),
      ),
    );
  }
}
