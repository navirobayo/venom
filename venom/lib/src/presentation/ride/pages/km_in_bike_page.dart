import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:venom/src/config/routes/router.dart';
import 'package:venom/src/injectable/injectable.dart';
import 'package:venom/src/presentation/ride/bloc/km_in_bike/km_in_bike_bloc.dart';

@RoutePage(name: 'km_in_bike')
class KmInBikePage extends StatelessWidget {
  KmInBikePage({super.key});
  final odometer1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<KmInBikeBloc, KmInBikeState>(
      bloc: getIt.get<KmInBikeBloc>(),
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Time Picker Spinner'),
          ),
          body: Container(
            padding: const EdgeInsets.only(top: 50),
            child: Column(
              children: <Widget>[
                Center(child: Text('Drive safe, ${getIt.get<String>()}')),
                Padding(
                  padding: const EdgeInsets.all(50),
                  child: TextField(
                    controller: odometer1,
                    decoration: const InputDecoration(
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
                const Text('Gas level:'),
                Slider(
                  value: getIt.get<KmInBikeBloc>().state.maybeWhen(
                    orElse: () {
                      return 0.5;
                    },
                    idle: (gasLevel) {
                      return gasLevel;
                    },
                  ),
                  activeColor: Theme.of(context).colorScheme.onBackground,
                  inactiveColor: Theme.of(context).focusColor,
                  onChanged: (value) {
                    getIt
                        .get<KmInBikeBloc>()
                        .add(KmInBikeEvent.chageGasLevel(value));
                  },
                  thumbColor: Colors.white54,
                  divisions: 10,
                  label: getIt.get<KmInBikeBloc>().state.maybeWhen(
                    orElse: () {
                      return ' | ';
                    },
                    idle: (gasLevel) {
                      return gasLevel == 0
                          ? 'Empty tank'
                          : gasLevel == 1
                              ? 'Full tank'
                              : '';
                    },
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 35),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Theme.of(context).focusColor,
                      ),
                    ),
                    onPressed: () {
                      getIt.get<KmInBikeBloc>().state.maybeWhen(
                            orElse: () {},
                            idle: (gasLevel) {
                              if (getIt.isRegistered<double>(
                                instanceName: 'gasLevel',
                              )) {
                                getIt
                                  ..unregister<double>(
                                    instanceName: 'gasLevel',
                                  )
                                  ..registerSingleton<double>(
                                    gasLevel,
                                    instanceName: 'gasLevel',
                                  );
                              } else {
                                getIt.registerSingleton<double>(
                                  gasLevel,
                                  instanceName: 'gasLevel',
                                );
                              }
                              if (getIt.isRegistered<double>(
                                instanceName: 'odometer',
                              )) {
                                getIt
                                  ..unregister<double>(
                                    instanceName: 'odometer',
                                  )
                                  ..registerSingleton<double>(
                                    double.tryParse(odometer1.text) ?? 0.0,
                                    instanceName: 'odometer',
                                  );
                              } else {
                                getIt.registerSingleton<double>(
                                  double.tryParse(odometer1.text) ?? 0.0,
                                  instanceName: 'odometer',
                                );
                              }
                              getIt.get<AppRouter>().pushNamed('/new_ride');
                            },
                          );
                    },
                    child: const Icon(
                      Icons.arrow_forward_ios_rounded,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class KmInBikeGasLevelAndOdometerModel {
  KmInBikeGasLevelAndOdometerModel(this.gasLevel, this.odometer);
  final double gasLevel;
  final double odometer;
}
