import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:venom/src/features/vehicle/domain/models/vehicle_model.dart';
import 'package:venom/src/injectable/injectable.dart';
import 'package:venom/src/presentation/vehicle/bloc/my_vehicle/my_vehicle_bloc.dart';

@RoutePage(name: 'my_vehicle')
class MyVehiclePage extends StatelessWidget {
  MyVehiclePage({super.key});
  final TextEditingController nameController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyVehicleBloc, MyVehicleState>(
      bloc: getIt.get<MyVehicleBloc>(),
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("My Vehicles"),
          ),
          body: ListView.builder(
            itemCount: getIt.get<MyVehicleBloc>().state.maybeWhen(
              orElse: () {
                return 0;
              },
              idle: (vehicles) {
                return vehicles.length;
              },
            ),
            itemBuilder: (BuildContext context, int index) {
              return getIt.get<MyVehicleBloc>().state.maybeWhen(
                orElse: () {
                  return SizedBox();
                },
                idle: (vehicles) {
                  return vehicles.isEmpty
                      ? SizedBox()
                      : Dismissible(
                          key: Key(vehicles[index].id.toString()),
                          onDismissed: (direction) async {
                            getIt
                                .get<MyVehicleBloc>()
                                .add(MyVehicleEvent.deleteVehicle(index));
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content:
                                    Text("${vehicles[index].name} deleted"),
                                action: SnackBarAction(
                                  label: "Undo",
                                  onPressed: () async {
                                    getIt.get<MyVehicleBloc>().add(
                                        MyVehicleEvent.cacheVehicle(
                                            vehicles[index]));
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
                            title: Text(vehicles[index].name ?? ''),
                            subtitle: Text(vehicles[index].tankCapacity ?? ''),
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
                                getIt
                                    .get<MyVehicleBloc>()
                                    .add(MyVehicleEvent.deleteVehicle(index));
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content:
                                        Text("${vehicles[index].name} deleted"),
                                    action: SnackBarAction(
                                      label: "Undo",
                                      onPressed: () async {
                                        getIt.get<MyVehicleBloc>().add(
                                            MyVehicleEvent.cacheVehicle(
                                                vehicles[index]));
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
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () async {
              await showDialog<Vehicle>(
                context: context,
                builder: (BuildContext context) {
                  String tankCapacity = "";
                  return AlertDialog(
                    title: const Text("Add Vehicle"),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextField(
                          decoration: const InputDecoration(labelText: "Name"),
                          controller: nameController,
                        ),
                        TextField(
                          decoration: const InputDecoration(
                              labelText: "Tank Capacity in GAL"),
                          keyboardType: TextInputType.number,
                          onChanged: (value) => tankCapacity = value,
                        ),
                      ],
                    ),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text("Cancel"),
                      ),
                      TextButton(
                        onPressed: () async {
                          getIt.get<MyVehicleBloc>().add(
                              MyVehicleEvent.cacheVehicle(Vehicle(
                                  name: nameController.text,
                                  tankCapacity: tankCapacity)));
                          Navigator.pop(context);
                        },
                        child: const Text("Add"),
                      ),
                    ],
                  );
                },
              );
            },
            child: const Icon(Icons.add),
          ),
        );
      },
    );
  }
}
