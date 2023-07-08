import 'package:flutter/material.dart';
import 'package:venom/components/ride_object.dart';
import 'package:venom/components/rides_database_final.dart';

class MyRides extends StatefulWidget {
  const MyRides({Key? key}) : super(key: key);

  @override
  State<MyRides> createState() => _MyRidesState();
}

class _MyRidesState extends State<MyRides> {
  late Future<List<Ride>> _ridesFuture;

  @override
  void initState() {
    super.initState();
    _ridesFuture = _getRides();
  }

  Future<List<Ride>> _getRides() async {
    final database = RidesDatabaseFinal();
    return database.rides();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Rides"),
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
                    final database = RidesDatabaseFinal();
                    await database.deleteRide(ride.id!);
                    final rides = await database.rides();
                    setState(() {
                      _ridesFuture = Future.value(rides);
                    });
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(ride.averageSpeed),
                        action: SnackBarAction(
                          label: "Undo",
                          onPressed: () async {
                            await database.insertRide(ride);
                            final rides = await database.rides();
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
                    leading: const Icon(Icons.add_road_rounded, size: 40),
                    title: Text("${ride.gasPrice} \$"),
                    subtitle: Text("${ride.distanceTravelled} km"),
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
                        final database = RidesDatabaseFinal();
                        await database.deleteRide(ride.id!);
                        final rides = await database.rides();
                        setState(() {
                          _ridesFuture = Future.value(rides);
                        });
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("${ride.gasPrice} deleted"),
                            action: SnackBarAction(
                              label: "Undo",
                              onPressed: () async {
                                await database.insertRide(ride);
                                final rides = await database.rides();
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
