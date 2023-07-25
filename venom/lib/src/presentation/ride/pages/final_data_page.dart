import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:venom/src/config/routes/router.dart';
import 'package:venom/src/injectable/injectable.dart';
import 'package:venom/src/presentation/ride/bloc/final_data/final_data_bloc.dart';

@RoutePage(name: 'final_data')
class FinalData extends StatelessWidget {
  FinalData({Key? key}) : super(key: key);

  final odometer2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FinalDataBloc, FinalDataState>(
      bloc: getIt.get<FinalDataBloc>(),
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Final Data"),
          ),
          body: Container(
            padding: const EdgeInsets.only(top: 50),
            child: Column(
              children: <Widget>[
                Center(child: Text("Nice ride, ${getIt.get<String>()}")),
                Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: TextField(
                    controller: odometer2,
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
                const Text("Gas level:"),
                Slider(
                  value: getIt.get<FinalDataBloc>().state.maybeWhen(
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
                        .get<FinalDataBloc>()
                        .add(FinalDataEvent.chageGasLevel(value));
                  },
                  min: 0,
                  max: 1,
                  divisions: 10,
                  label: getIt.get<FinalDataBloc>().state.maybeWhen(
                    orElse: () {
                      return ' | ';
                    },
                    idle: (gasLevel) {
                      return gasLevel == 0
                          ? "Empty tank"
                          : gasLevel == 1
                              ? "Full tank"
                              : "";
                    },
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 35),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).focusColor),
                    ),
                    onPressed: () {
                      getIt.get<FinalDataBloc>().state.maybeWhen(
                            orElse: () {},
                            idle: (gasLevel) {
                              if (getIt.isRegistered<double>(
                                  instanceName: 'gasLevel2')) {
                                getIt.unregister<double>(
                                  instanceName: 'gasLevel2',
                                );
                                getIt.registerSingleton<double>(gasLevel,
                                    instanceName: 'gasLevel2');
                              } else {
                                getIt.registerSingleton<double>(gasLevel,
                                    instanceName: 'gasLevel2');
                              }
                              if (getIt.isRegistered<double>(
                                  instanceName: 'odometer2')) {
                                getIt.unregister<double>(
                                  instanceName: 'odometer2',
                                );
                                getIt.registerSingleton<double>(
                                  double.tryParse(odometer2.text) ?? 0.0,
                                  instanceName: 'odometer2',
                                );
                              } else {
                                getIt.registerSingleton<double>(
                                  double.tryParse(odometer2.text) ?? 0.0,
                                  instanceName: 'odometer2',
                                );
                              }
                            },
                          );

                      getIt.get<AppRouter>().pushNamed('/ride_results_page');
                    },
                    child: const Icon(Icons.arrow_forward_ios_rounded),
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
