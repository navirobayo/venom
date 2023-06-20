import 'package:flutter/material.dart';

class ResultsScreen extends StatefulWidget {
  final String timeTraveled;

  const ResultsScreen({Key? key, required this.timeTraveled}) : super(key: key);

  @override
  State<ResultsScreen> createState() => _ResultsScreenState();
}

class _ResultsScreenState extends State<ResultsScreen> {
  late String kmInOdometerOne;
  late String kmInOdometerTwo;

  late String moneySpent = "0.0";

  late String distanceTraveled = "0.0";

  late String pricePerLiter = "0.0";

  late String pricePerKm = "0.0";

  late String litersConsumed = "0.0";

  late String galConsumed = "0.0";

  late String timeTraveled = "0.0";

  late String averageSpeed = "0.0";

  final moneySpentController = TextEditingController();
  final distanceTraveledController = TextEditingController();
  final pricePerLiterController = TextEditingController();
  final pricePerKmController = TextEditingController();
  final litersConsumedController = TextEditingController();
  final galConsumedController = TextEditingController();
  final timeTraveledController = TextEditingController();
  final averageSpeedController = TextEditingController();

  @override
  void initState() {
    super.initState();
    timeTraveledController.text = widget.timeTraveled;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Ride Results"),
        ),
        body: ListView(
          children: [
            const SizedBox(
              height: 25,
            ),
            const Padding(
              padding: EdgeInsets.all(50.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'KM that you see in the odometer',
                ),
                textAlign: TextAlign.center,
                textAlignVertical: TextAlignVertical.center,
                keyboardType: TextInputType.number,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Expanded(
              child: ElevatedButton(
                onPressed: null,
                /* () {
                  // Function that adds the KM in odometer from the TextInput
                  setState(() {
                    rideDistance();
                    moneySpent();
                    pricePerKm();
                    galConsumed();
                    averageSpeed();
                    litersConsumed();
                    timeTraveled();
                    pricePerLiter();
                    distanceTraveled();
                    moneySpentController.text = moneySpent;
                    distanceTraveledController.text = distanceTraveled;
                    pricePerLiterController.text = pricePerLiter;
                    pricePerKmController.text = pricePerKm;
                    litersConsumedController.text = litersConsumed;
                    galConsumedController.text = galConsumed;
                    timeTraveledController.text = timeTraveled;
                    averageSpeedController.text = averageSpeed;
                  });
                }, */
                child: Text("Results"),
              ),
            ),
            Card(
                child: SizedBox(
              width: 150,
              height: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Money spent: $moneySpent'),
                  Text('Distance traveled: $distanceTraveled'),
                  Text('Price per liter: $pricePerLiter'),
                  Text('Price per km: $pricePerKm'),
                  Text('Liters consumed: $litersConsumed'),
                  Text('Gallons consumed: $galConsumed'),
                  Text('Time traveled: $timeTraveled'),
                  Text('Average speed: $averageSpeed'),
                ],
              ),
            )),
          ],
        ));
  }
}

// Functions that compute the information.
/* 
void rideDistance() {
  int rideDistance = int.parse(kmInOdometerTwo) - int.parse(kmInOdometerOne);
}

void moneySpent() {
  double moneySpent =
      double.parse(pricePerLiter) * double.parse(litersConsumed);
}

void pricePerKm() {
  double pricePerKm = double.parse(moneySpent) / double.parse(distanceTraveled);
}

void galConsumed() {
  double galConsumed = double.parse(litersConsumed) * 0.264172;
}

void averageSpeed() {
  double averageSpeed =
      double.parse(distanceTraveled) / double.parse(timeTraveled);
}

void litersConsumed() {
  double litersConsumed =
      double.parse(distanceTraveled) / double.parse(averageSpeed);
}

void timeTraveled() {
  double timeTraveled =
      double.parse(distanceTraveled) / double.parse(averageSpeed);
}

void pricePerLiter() {
  double pricePerLiter =
      double.parse(moneySpent) / double.parse(litersConsumed);
}

void distanceTraveled() {
  double distanceTraveled =
      double.parse(kmInOdometerTwo) - double.parse(kmInOdometerOne);
}

void duration() {
  int duration = duration;
}

*/
