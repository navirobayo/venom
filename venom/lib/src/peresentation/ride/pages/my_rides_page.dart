import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:venom/src/features/ride/domain/models/ride_model.dart';
import 'package:venom/src/injectable/injectable.dart';
import 'package:venom/src/peresentation/ride/pages/bloc/rides/rides_bloc.dart';

@RoutePage(name: 'rides')
class MyRides extends StatelessWidget {
  const MyRides({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Rides"),
      ),
      body: BlocBuilder(
          bloc: getIt.get<RidesBloc>(),
          builder: (context, state) {
            return getIt.get<RidesBloc>().state.maybeWhen(
              orElse: () {
                return Center(
                  child: Text('or Else'),
                );
              },
              failure: (message, failure) {
                return Center(
                  child: Text(failure.maybeWhen(
                    orElse: () {
                      return 'or Else';
                    },
                    nullParam: () {
                      return 'No Data';
                    },
                  )),
                );
              },
              idle: (rides, isLoading) {
                return FutureBuilder<List<Ride>>(
                  future: Future.value([]),
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
                              // final database = RidesDatabaseFinal();
                              // await database.deleteRide(ride.id!);
                              // final rides = await database.rides();
                              // setState(() {
                              //   _ridesFuture = Future.value(rides);
                              // });
                              // ScaffoldMessenger.of(context).showSnackBar(
                              //   SnackBar(
                              //     content: Text(ride.averageSpeed),
                              //     action: SnackBarAction(
                              //       label: "Undo",
                              //       onPressed: () async {
                              //         await database.insertRide(ride);
                              //         final rides = await database.rides();
                              //         setState(() {
                              //           _ridesFuture = Future.value(rides);
                              //         });
                              //       },
                              //     ),
                              //   ),
                              // );
                            },
                            background: Container(
                              color: Colors.red,
                              child: const ListTile(
                                leading:
                                    Icon(Icons.delete, color: Colors.white),
                              ),
                            ),
                            child: ListTile(
                              leading:
                                  const Icon(Icons.add_road_rounded, size: 40),
                              title: Text("${ride.gasPrice} \$"),
                              subtitle: Text("${ride.distanceTravelled} km"),
                              onLongPress: () async {
                                final result = await showMenu(
                                  context: context,
                                  position:
                                      const RelativeRect.fromLTRB(2, 0, 0, 0),
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
                                  // final database = RidesDatabaseFinal();
                                  // await database.deleteRide(ride.id!);
                                  // final rides = await database.rides();
                                  // setState(() {
                                  //   _ridesFuture = Future.value(rides);
                                  // });
                                  // ScaffoldMessenger.of(context).showSnackBar(
                                  //   SnackBar(
                                  //     content: Text("${ride.gasPrice} deleted"),
                                  //     action: SnackBarAction(
                                  //       label: "Undo",
                                  //       onPressed: () async {
                                  //         await database.insertRide(ride);
                                  //         final rides = await database.rides();
                                  //         setState(() {
                                  //           _ridesFuture = Future.value(rides);
                                  //         });
                                  //       },
                                  //     ),
                                  //   ),
                                  // );
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
                );
              },
              loading: () {
                return Center(
                  child: CircularProgressIndicator(),
                );
              },
            );
          }),
    );
  }
}
