import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';

class TimerWidget extends StatelessWidget {
  const TimerWidget({
    required int duration, required CountDownController controller, super.key,
  })  : _duration = duration,
        _controller = controller;

  final int _duration;
  final CountDownController _controller;

  @override
  Widget build(BuildContext context) {
    return CircularCountDownTimer(
      duration: _duration,
      controller: _controller,
      width: MediaQuery.of(context).size.width / 3,
      height: MediaQuery.of(context).size.height / 3,
      ringColor: Theme.of(context).focusColor,
      fillColor: Colors.tealAccent,
      backgroundColor: Theme.of(context).highlightColor,
      strokeWidth: 20,
      strokeCap: StrokeCap.round,
      textStyle: const TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
      textFormat: CountdownTextFormat.HH_MM_SS,
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
          return 'Go';
        } else {
          return Function.apply(defaultFormatterFunction, [duration]);
        }
      },
    );
  }
}
