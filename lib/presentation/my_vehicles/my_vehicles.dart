import 'package:flutter/material.dart';
import 'package:venom/components/default_vehicle_database.dart';
import 'package:venom/components/vehicles_database.dart';
import 'package:venom/components/vehicle_object.dart';

class MyVehicles extends StatefulWidget {
  const MyVehicles({Key? key}) : super(key: key);

  @override
  State<MyVehicles> createState() => _MyVehiclesState();
}

class _MyVehiclesState extends State<MyVehicles> {
  late Future<List<Vehicle>> _vehiclesFuture;

  @override
  void initState() {
    super.initState();
    _vehiclesFuture = _getVehicles();
  }

  Future<List<Vehicle>> _getVehicles() async {
    final database = VehicleDatabase();
    return database.vehicles();
  }

  Future<void> _addVehicle(String name, String tankCapacity) async {
    final vehicle = Vehicle(name: name, tankCapacity: tankCapacity);
    final database = VehicleDatabase();
    await database.insertVehicle(vehicle);
    final vehicles = await database.vehicles();
    setState(() {
      _vehiclesFuture = Future.value(vehicles);
    });

    final defaultVehicle = DefaultVehicleObject(
      vehicleName: vehicle.name,
      vehicleTankSize: vehicle.tankCapacity,
    );
    final defaultVehicleDatabase = DefaultVehicleDatabase.instance;
    await defaultVehicleDatabase.insertDefaultVehicle(defaultVehicle);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Vehicles"),
      ),
      body: FutureBuilder<List<Vehicle>>(
        future: _vehiclesFuture,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final vehicles = snapshot.data!;
            return ListView.builder(
              itemCount: vehicles.length,
              itemBuilder: (BuildContext context, int index) {
                final vehicle = vehicles[index];
                return Dismissible(
                  key: Key(vehicle.id.toString()),
                  onDismissed: (direction) async {
                    final database = VehicleDatabase();
                    await database.deleteVehicle(vehicle.id!);
                    final vehicles = await database.vehicles();
                    setState(() {
                      _vehiclesFuture = Future.value(vehicles);
                    });
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("${vehicle.name} deleted"),
                        action: SnackBarAction(
                          label: "Undo",
                          onPressed: () async {
                            await database.insertVehicle(vehicle);
                            final vehicles = await database.vehicles();
                            setState(() {
                              _vehiclesFuture = Future.value(vehicles);
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
                    title: Text(vehicle.name),
                    subtitle: Text(vehicle.tankCapacity),
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
                        final database = VehicleDatabase();
                        await database.deleteVehicle(vehicle.id!);
                        final vehicles = await database.vehicles();
                        setState(() {
                          _vehiclesFuture = Future.value(vehicles);
                        });
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("${vehicle.name} deleted"),
                            action: SnackBarAction(
                              label: "Undo",
                              onPressed: () async {
                                await database.insertVehicle(vehicle);
                                final vehicles = await database.vehicles();
                                setState(() {
                                  _vehiclesFuture = Future.value(vehicles);
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
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await showDialog<Vehicle>(
            context: context,
            builder: (BuildContext context) {
              String name = "";
              String tankCapacity = "";
              return AlertDialog(
                title: const Text("Add Vehicle"),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      decoration: const InputDecoration(labelText: "Name"),
                      onChanged: (value) => name = value,
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
                      await _addVehicle(name, tankCapacity);
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
  }
}
