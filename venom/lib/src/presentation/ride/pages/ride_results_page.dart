import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:venom/src/features/ride/domain/models/ride_model.dart';
import 'package:venom/src/injectable/injectable.dart';
import 'package:venom/src/presentation/ride/bloc/before_ride/before_ride_bloc.dart';
import 'package:venom/src/presentation/ride/bloc/final_data/final_data_bloc.dart';
import 'package:venom/src/presentation/ride/bloc/km_in_bike/km_in_bike_bloc.dart';
import 'package:venom/src/presentation/ride/bloc/new_ride/new_ride_bloc.dart';
import 'package:venom/src/presentation/ride/bloc/ride_result/ride_result_bloc.dart';
import 'package:venom/src/presentation/ride/bloc/rides/rides_bloc.dart';

@RoutePage(name: 'ride_results_page')
class RideResultsPage extends StatelessWidget {
  const RideResultsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RideResultBloc, RideResultState>(
      bloc: getIt.get<RideResultBloc>(),
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Results"),
          ),
          body: ListView(
            children: [
              const SizedBox(
                height: 25,
              ),
              Card(
                child: SizedBox(
                    width: 150,
                    height: 300,
                    child: state.maybeWhen(
                      orElse: () {
                        return SizedBox();
                      },
                      idle: (ride) {
                        Ride currentRide = ride ??
                            Ride(
                                averageSpeed: '0',
                                distanceTravelled: '0',
                                gasPrice: '0',
                                gasUsed: '0',
                                id: 0,
                                timeTraveled: '0');
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                                "Time traveled: ${currentRide.timeTraveled ?? '00:00:00'}"),
                            Text(
                                'Distance traveled: ${(currentRide.distanceTravelled ?? 0.0)} km'),
                            Text(
                                "Fuel used in this ride: ${currentRide.gasUsed ?? 0.0} Gallons"),
                            Text(
                                'Money spent in this ride: \$${currentRide.gasPrice ?? 0.0}'),
                            Text(
                                "Average speed: ${currentRide.averageSpeed ?? 0.0} km/h"),
                          ],
                        );
                      },
                    )),
              ),
              SizedBox(
                height: 50,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Theme.of(context).focusColor),
                  ),
                  onPressed: () {
                    getIt
                        .get<RideResultBloc>()
                        .add(RideResultEvent.analyzeRide());
                  },
                  child: const Text("Analyze ride"),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                height: 50,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Theme.of(context).focusColor),
                  ),
                  onPressed: () async {
                    getIt.get<RideResultBloc>().state.maybeWhen(
                          orElse: () {},
                          idle: (ride) {
                            getIt
                                .get<RideResultBloc>()
                                .add(RideResultEvent.saveAndClose(ride));
                            getIt.resetLazySingleton<NewRideBloc>();
                            getIt.resetLazySingleton<KmInBikeBloc>();
                            getIt.resetLazySingleton<BeforeRideBloc>();
                            getIt.resetLazySingleton<RideResultBloc>();
                            getIt.resetLazySingleton<FinalDataBloc>();
                            getIt.resetLazySingleton<RidesBloc>();
                          },
                        );
                  },
                  child: const Text("Save and close"),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
