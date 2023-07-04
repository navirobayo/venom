import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:venom/components/default_price_database.dart';
import 'package:venom/components/default_vehicle_database.dart';
import 'package:venom/components/timer_widget.dart';
import 'package:venom/presentation/new_ride/final_data_screen.dart';

class NewRide extends StatefulWidget {
  final int duration;
  final double gasLevel;
  final double odometer1;
  const NewRide({
    Key? key,
    required this.duration,
    required this.gasLevel,
    required this.odometer1,
  }) : super(key: key);

  @override
  State<NewRide> createState() => _NewRideState();
}

class _NewRideState extends State<NewRide> {
  late final CountDownController _controller = CountDownController();
  double _gasLevel1 = 0.5;
  double _odometer1 = 0.0;
  bool _isStarted = false;
  late DefaultVehicleObject _defaultVehicle;
  late DefaultPriceObject _defaultPrice;

  @override
  void initState() {
    super.initState();
    _odometer1 = widget.odometer1;
    _gasLevel1 = widget.gasLevel;
    _getDefaultVehicle();
    _getDefaultPrice();
  }

  Future<void> _getDefaultVehicle() async {
    _defaultVehicle = await DefaultVehicleDatabase.instance.defaultVehicle();
    setState(() {});
  }

  Future<void> _getDefaultPrice() async {
    _defaultPrice = await DefaultPriceDatabase.instance.defaultPrice();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        title: const Text("Ride Analyzer"),
      ),
      body: Center(
        child: ListView(
          children: [
            const SizedBox(
              height: 50,
            ),
            GestureDetector(
              child: TimerWidget(
                duration: widget.duration,
                controller: _controller,
              ),
              onTap: () {
                _controller.start();
                setState(() {
                  _isStarted = true;
                });
              },
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 300,
              height: 100,
              child: Column(
                children: [
                  const Text("Press Go and enjoy the ride,"),
                  const Text("Venom will notify when the ride is done"),
                  Text(
                    "Gas level: ${(_gasLevel1 * 100).round()}%",
                  ),
                  Text('Vehicle: ${_defaultVehicle.vehicleName}'),
                  Text('Gas Price: ${_defaultPrice.fuelPrice}'),
                ],
              ),
            ),
            if (_isStarted)
              SizedBox(
                height: 50,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Theme.of(context).focusColor,
                    ),
                  ),
                  onPressed: () {
                    _controller.pause();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FinalData(
                          gasLevel1: _gasLevel1,
                          odometer1: widget.odometer1,
                          timeTraveled: (_controller.getTime()).toString(),
                        ),
                      ),
                    );
                  },
                  child: const Text("Stop now and Analyze"),
                ),
              ),
          ],
        ),
      ),
    );
  }
}


/* Row(
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
          ), */

          /* Widget _button({required String title, VoidCallback? onPressed}) {
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
  } */

  /* floatingActionButton: FloatingActionButton(
        onPressed: () => _controller.start(),
        child: const Icon(Icons.pause),
      ), */