import 'package:auto_route/auto_route.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:venom/src/config/routes/router.dart';
import 'package:venom/src/injectable/injectable.dart';
import 'package:venom/src/peresentation/ride/bloc/new_ride/new_ride_bloc.dart';
import 'package:venom/src/peresentation/ride/widgets/timer_widget.dart';

@RoutePage(name: 'new_ride')
class NewRidePage extends StatefulWidget {
  NewRidePage({super.key});

  @override
  State<NewRidePage> createState() => _NewRidePageState();
}

class _NewRidePageState extends State<NewRidePage> {
  late final CountDownController _controller = CountDownController();

  @override
  void initState() {
    getIt.resetLazySingleton<NewRideBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewRideBloc, NewRideState>(
      bloc: getIt.get<NewRideBloc>(),
      builder: (context, state) {
        return Scaffold(
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          appBar: AppBar(
            title: const Text("Ride Analyzer"),
          ),
          body: Center(
            child: ListView(
              children: [
                const SizedBox(
                  height: 50,
                ),
                GestureDetector(
                  child: TimerWidget(
                    duration: getIt.get<int>(),
                    controller: _controller,
                  ),
                  onTap: () {
                    getIt.get<NewRideBloc>().state.maybeWhen(
                          orElse: () {},
                          idle: (isStarted, defaultVehicle, defaultPrice) {
                            if (!isStarted) {
                              _controller.start();
                              getIt
                                  .get<NewRideBloc>()
                                  .add(NewRideEvent.startTimer());
                            } else {
                              if (_controller.isPaused) {
                                _controller.resume();
                              }
                            }
                          },
                        );
                  },
                ),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: 300,
                  height: 100,
                  child: Column(
                    children: [
                      const Text("Press Go and enjoy the ride,"),
                      const Text("Venom will notify when the ride is done"),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                          'Current Vehicle: ${getIt.get<NewRideBloc>().state.maybeWhen(
                        orElse: () {
                          return '';
                        },
                        idle: (isStarted, defaultVehicle, defaultPrice) {
                          return defaultVehicle.name;
                        },
                      )}'),
                      Text(
                          'Current Price per Gallon: \$${getIt.get<NewRideBloc>().state.maybeWhen(
                        orElse: () {
                          return '';
                        },
                        idle: (isStarted, defaultVehicle, defaultPrice) {
                          return defaultPrice.price;
                        },
                      )}'),
                    ],
                  ),
                ),
                getIt.get<NewRideBloc>().state.maybeWhen(
                  orElse: () {
                    return SizedBox();
                  },
                  idle: (isStarted, defaultVehicle, defaultPrice) {
                    if (isStarted) {
                      return SizedBox(
                        height: 50,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              Theme.of(context).focusColor,
                            ),
                          ),
                          onPressed: () {
                            _controller.pause();
                            if (getIt.isRegistered<String>(
                                instanceName: 'timeTraveled')) {
                              getIt.unregister<String>(
                                instanceName: 'timeTraveled',
                              );
                              getIt.registerSingleton<String>(
                                  _controller.getTime() ?? '',
                                  instanceName: 'timeTraveled');
                            } else {
                              getIt.registerSingleton<String>(
                                  _controller.getTime() ?? '',
                                  instanceName: 'timeTraveled');
                            }
                            getIt.get<AppRouter>().pushNamed('/final_data');
                          },
                          child: const Text("Stop now and Analyze"),
                        ),
                      );
                    } else {
                      return SizedBox();
                    }
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
