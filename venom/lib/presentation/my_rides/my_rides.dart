import 'package:flutter/material.dart';
import 'package:venom/components/ride_object.dart';
import 'package:venom/components/rides_database.dart';

class MyRides extends StatefulWidget {
  @override
  _MyRidesState createState() => _MyRidesState();
}

class _MyRidesState extends State<MyRides> {
  late RideDatabase _rideDatabase;
  late List<RideObject> _rides;

  @override
  void initState() {
    super.initState();
    _rideDatabase = RideDatabase();
    _loadRides();
  }

  Future<void> _loadRides() async {
    final rides = await _rideDatabase.rides();
    setState(() {
      _rides = rides;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My rides historical tracker"),
      ),
      body: ListView.builder(
        itemCount: _rides.length,
        itemBuilder: (context, index) {
          final ride = _rides[index];
          return ListTile(
            title: Text('Time traveled: ${ride.timeTraveled}'),
            subtitle: Text('Date: ${ride.date}'),
          );
        },
      ),
    );
  }
}
