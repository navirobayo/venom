import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:venom/src/config/routes/router.dart';
import 'package:venom/src/injectable/injectable.dart';
import 'package:venom/src/presentation/ride/bloc/rides/rides_bloc.dart';

@RoutePage(name: 'rides')
class MyRides extends StatefulWidget {
  const MyRides({super.key});

  @override
  State<MyRides> createState() => _MyRidesState();
}

class _MyRidesState extends State<MyRides> {
  @override
  void initState() {
    getIt.resetLazySingleton<RidesBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Rides'),
      ),
      body: BlocBuilder(
        bloc: getIt.get<RidesBloc>(),
        builder: (context, state) {
          return getIt.get<RidesBloc>().state.maybeWhen(
            orElse: () {
              return const Center(
                child: Text('No rides yet.'),
              );
            },
            failure: (message, failure) {
              return Center(
                child: Text(
                  failure.maybeWhen(
                    orElse: () {
                      return 'No rides yet.';
                    },
                    nullParam: () {
                      return 'No rides yet.';
                    },
                  ),
                ),
              );
            },
            idle: (rides) {
              return ListView.builder(
                itemCount: rides.length,
                itemBuilder: (BuildContext context, int index) {
                  return Dismissible(
                    key: Key(rides[index].id),
                    onDismissed: (direction) async {
                      getIt.get<RidesBloc>().add(RidesEvent.deleteRide(index));
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('${rides[index].gasPrice} deleted'),
                          action: SnackBarAction(
                            label: 'Undo',
                            onPressed: () async {
                              getIt
                                  .get<RidesBloc>()
                                  .add(RidesEvent.cacheRide(rides[index]));
                            },
                          ),
                        ),
                      );
                    },
                    background: const ColoredBox(
                      color: Colors.red,
                      child: ListTile(
                        leading: Icon(Icons.delete, color: Colors.white),
                      ),
                    ),
                    child: ListTile(
                      leading: const Icon(Icons.add_road_rounded, size: 40),
                      title: Text('${rides[index].gasPrice} \$'),
                      subtitle: Text(
                        '${rides[index].distanceTravelled} km',
                        style: const TextStyle(color: Colors.white54),
                      ),
                      onLongPress: () async {
                        final result = await showMenu(
                          context: context,
                          position: const RelativeRect.fromLTRB(2, 0, 0, 0),
                          items: [
                            const PopupMenuItem(
                              value: 'delete',
                              child: Row(
                                children: [
                                  Icon(Icons.delete),
                                  SizedBox(width: 8),
                                  Text('Delete'),
                                ],
                              ),
                            ),
                          ],
                        );
                        if (result == 'delete') {
                          getIt
                              .get<RidesBloc>()
                              .add(RidesEvent.deleteRide(index));
                          ScaffoldMessenger.of(
                            getIt.get<AppRouter>().navigatorKey.currentContext!,
                          ).showSnackBar(
                            SnackBar(
                              content: Text('${rides[index].gasPrice} deleted'),
                              action: SnackBarAction(
                                label: 'Undo',
                                onPressed: () async {
                                  getIt.get<RidesBloc>().add(
                                        RidesEvent.cacheRide(rides[index]),
                                      );
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
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          );
        },
      ),
    );
  }
}
