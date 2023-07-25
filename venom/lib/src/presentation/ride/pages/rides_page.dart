import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:venom/src/injectable/injectable.dart';
import 'package:venom/src/presentation/ride/bloc/rides/rides_bloc.dart';

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
                  child: Text('No Data'),
                );
              },
              failure: (message, failure) {
                return Center(
                  child: Text(failure.maybeWhen(
                    orElse: () {
                      return 'No Data';
                    },
                    nullParam: () {
                      return 'No Data';
                    },
                  )),
                );
              },
              idle: (rides) {
                return ListView.builder(
                  itemCount: rides.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Dismissible(
                      key: Key(rides[index].id.toString()),
                      onDismissed: (direction) async {
                        getIt
                            .get<RidesBloc>()
                            .add(RidesEvent.deleteRide(index));
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("${rides[index].gasPrice} deleted"),
                            action: SnackBarAction(
                              label: "Undo",
                              onPressed: () async {
                                getIt
                                    .get<RidesBloc>()
                                    .add(RidesEvent.cacheRide(rides[index]));
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
                        title: Text("${rides[index].gasPrice} \$"),
                        subtitle: Text(
                          "${rides[index].distanceTravelled} km",
                          style: TextStyle(color: Colors.white54),
                        ),
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
                            getIt
                                .get<RidesBloc>()
                                .add(RidesEvent.deleteRide(index));
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content:
                                    Text("${rides[index].gasPrice} deleted"),
                                action: SnackBarAction(
                                  label: "Undo",
                                  onPressed: () async {
                                    getIt.get<RidesBloc>().add(
                                        RidesEvent.cacheRide(rides[index]));
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
