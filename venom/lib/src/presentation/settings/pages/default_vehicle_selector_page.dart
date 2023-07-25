import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:venom/src/features/vehicle/domain/models/vehicle_model.dart';
import 'package:venom/src/injectable/injectable.dart';
import 'package:venom/src/presentation/settings/bloc/default_vehicle/default_vehicle_bloc.dart';
import 'package:venom/src/presentation/vehicle/bloc/my_vehicle/my_vehicle_bloc.dart';

@RoutePage(name: 'DefaultVehicleSelector')
class DefaultVehicleSelectorPage extends StatelessWidget {
  const DefaultVehicleSelectorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DefaultVehicleBloc, DefaultVehicleState>(
      bloc: getIt.get<DefaultVehicleBloc>(),
      builder: (context, state) {
        final Vehicle defaultVehicle = state.vehicle ??
            (getIt.get<MyVehicleBloc>().state.maybeWhen(
              orElse: () {
                return Vehicle();
              },
              idle: (vehicles) {
                if (vehicles.isEmpty) {
                  return Vehicle(
                      id: 0, isDefault: false, tankCapacity: '', name: '');
                } else {
                  return vehicles.last;
                }
              },
            ));
        return Scaffold(
          appBar: AppBar(
            title: const Text("Default Vehicle"),
          ),
          body: ListView(
            children: [
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  const Spacer(),
                  Text(
                    (defaultVehicle.tankCapacity ?? '00'),
                    style: const TextStyle(fontSize: 48.0),
                  ),
                  const Text("-GAL", style: TextStyle(fontSize: 48.0)),
                  const Spacer(),
                  Text(
                    (defaultVehicle.name ?? 'None'),
                  ),
                  const Spacer(),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Theme.of(context).focusColor),
                ),
                onPressed: () async {
                  getIt.get<MyVehicleBloc>().state.maybeWhen(orElse: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text('No current vehicles'),
                            content: const Text(
                                'Please add them in "My vehicles" screen'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('OK'),
                              ),
                            ],
                          );
                        });
                  }, idle: (vehicles) async {
                    if (vehicles.isEmpty) {
                      return showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text('No current vehicles'),
                            content: const Text(
                                'Please add them in "My vehicles" screen'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('OK'),
                              ),
                            ],
                          );
                        },
                      );
                    }
                    final selectedVehicle = await showDialog<Vehicle>(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('Select a vehicle'),
                          content: SizedBox(
                            width: double.maxFinite,
                            child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: vehicles.length,
                              itemBuilder: (context, index) {
                                final vehicle = vehicles[index];
                                return ListTile(
                                  title: Text(vehicle.name!),
                                  onTap: () {
                                    Navigator.pop(context, vehicle);
                                  },
                                );
                              },
                            ),
                          ),
                        );
                      },
                    );

                    if (selectedVehicle != null) {
                      // Insert the selected vehicle as the new default vehicle
                      getIt.get<DefaultVehicleBloc>().add(
                          DefaultVehicleEvent.setDefaultVehicle(
                              selectedVehicle));
                    }
                  });
                },
                child: const Text('Select vehicle'),
              ),
            ],
          ),
        );
      },
    );
  }
}
