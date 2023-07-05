import 'package:flutter/material.dart';
import 'package:venom/components/rides_database.dart';

class RidesHistorical extends StatefulWidget {
  const RidesHistorical({Key? key}) : super(key: key);

  @override
  State<RidesHistorical> createState() => _RidesHistoricalState();
}

class _RidesHistoricalState extends State<RidesHistorical> {
  late Future<List<Ride>> _ridesFuture;

  @override
  void initState() {
    super.initState();
    _ridesFuture = _getRides();
  }

  Future<List<Ride>> _getRides() async {
    final database = RidesDatabase.instance;
    return database.getAllRides();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rides Historical Tracker"),
      ),
      body: FutureBuilder<List<Ride>>(
        future: _ridesFuture,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final rides = snapshot.data!;
            return ListView.builder(
              itemCount: rides.length,
              itemBuilder: (BuildContext context, int index) {
                final ride = rides[index];
                return Dismissible(
                  key: Key(ride.id.toString()),
                  onDismissed: (direction) async {
                    final database = RidesDatabase.instance;
                    await database.deleteRide(ride.id!);
                    final rides = await database.getAllRides();
                    setState(() {
                      _ridesFuture = Future.value(rides);
                    });
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("$ride deleted"),
                        action: SnackBarAction(
                          label: "Undo",
                          onPressed: () async {
                            await database.insertRide(ride);
                            final rides = await database.getAllRides();
                            setState(() {
                              _ridesFuture = Future.value(rides);
                            });
                          },
                        ),
                      ),
                    );
                  },
                  background: Container(
                    color: Colors.red,
                    child: const ListTile(
                      leading: Icon(Icons.delete, color: Colors.white),
                    ),
                  ),
                  child: ListTile(
                    leading: const Icon(Icons.motorcycle, size: 40),
                    title: Text(
                        "Distance travelled: ${ride.distanceTravelled} km"),
                    subtitle: Text("Gas used: ${ride.gasUsed} gallons"),
                    trailing: Switch(value: false, onChanged: (value) {}),
                    onLongPress: () async {
                      final result = await showMenu(
                        context: context,
                        position: const RelativeRect.fromLTRB(2, 0, 0, 0),
                        items: [
                          const PopupMenuItem(
                            value: "delete",
                            child: Row(
                              children: [
                                Icon(Icons.delete),
                                SizedBox(width: 8),
                                Text("Delete")
                              ],
                            ),
                          )
                        ],
                      );
                      if (result == "delete") {
                        final database = RidesDatabase.instance;
                        await database.deleteRide(ride.id!);
                        final rides = await database.getAllRides();
                        setState(() {
                          _ridesFuture = Future.value(rides);
                        });
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("$ride deleted"),
                            action: SnackBarAction(
                              label: "Undo",
                              onPressed: () async {
                                await database.insertRide(ride);
                                final rides = await database.getAllRides();
                                setState(() {
                                  _ridesFuture = Future.value(rides);
                                });
                              },
                            ),
                          ),
                        );
                      }
                    },
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
