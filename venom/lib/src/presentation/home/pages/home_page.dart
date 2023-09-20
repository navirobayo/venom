import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:venom/src/config/routes/router.dart';
import 'package:venom/src/injectable/injectable.dart';
import 'package:venom/src/presentation/gas_price/bloc/gas_price/gas_price_bloc.dart';
import 'package:venom/src/presentation/ride/bloc/before_ride/before_ride_bloc.dart';
import 'package:venom/src/presentation/ride/bloc/final_data/final_data_bloc.dart';
import 'package:venom/src/presentation/ride/bloc/km_in_bike/km_in_bike_bloc.dart';
import 'package:venom/src/presentation/ride/bloc/new_ride/new_ride_bloc.dart';
import 'package:venom/src/presentation/ride/bloc/ride_result/ride_result_bloc.dart';
import 'package:venom/src/presentation/ride/bloc/rides/rides_bloc.dart';
import 'package:venom/src/presentation/settings/bloc/default_price/default_price_bloc.dart';
import 'package:venom/src/presentation/settings/bloc/default_vehicle/default_vehicle_bloc.dart';
import 'package:venom/src/presentation/vehicle/bloc/my_vehicle/my_vehicle_bloc.dart';

@RoutePage(name: 'home')
class HomePage extends StatelessWidget {
  HomePage({super.key});

  final String userName = getIt.get<String>();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt.get<RidesBloc>()),
        BlocProvider(create: (_) => getIt.get<BeforeRideBloc>()),
        BlocProvider(create: (_) => getIt.get<NewRideBloc>()),
        BlocProvider(create: (_) => getIt.get<FinalDataBloc>()),
        BlocProvider(create: (_) => getIt.get<RideResultBloc>()),
        BlocProvider(create: (_) => getIt.get<KmInBikeBloc>()),
        BlocProvider(create: (_) => getIt.get<MyVehicleBloc>()),
        BlocProvider(create: (_) => getIt.get<DefaultPriceBloc>()),
        BlocProvider(create: (_) => getIt.get<DefaultVehicleBloc>()),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Ver. 2.0.0'),
          automaticallyImplyLeading: false,
        ),
        body: Center(
          child: ListView(
            children: [
              const SizedBox(
                height: 50,
              ),
              Center(
                child: Text(
                  'Welcome, $userName',
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(fontSize: 22.sp),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    clipBehavior: Clip.hardEdge,
                    elevation: 3,
                    child: InkWell(
                      splashColor: Colors.blue.withAlpha(30),
                      onTap: () {
                        getIt.get<AppRouter>().pushNamed('/rides');
                      },
                      child: const SizedBox(
                        width: 150,
                        height: 150,
                        child: Center(child: Text('Rides')),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Card(
                    clipBehavior: Clip.hardEdge,
                    elevation: 3,
                    child: InkWell(
                      splashColor: Colors.blue.withAlpha(30),
                      onTap: () {
                        getIt.get<AppRouter>().pushNamed('/toolkit');
                      },
                      child: const SizedBox(
                        width: 150,
                        height: 150,
                        child: Center(child: Text('Toolkit')),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    clipBehavior: Clip.hardEdge,
                    elevation: 3,
                    child: InkWell(
                      splashColor: Colors.blue.withAlpha(30),
                      onTap: () {
                        getIt.get<AppRouter>().pushNamed('/gas_history');
                      },
                      child: const SizedBox(
                        width: 150,
                        height: 150,
                        child: Center(child: Text('Gas Prices')),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Card(
                    clipBehavior: Clip.hardEdge,
                    elevation: 3,
                    child: InkWell(
                      splashColor: Colors.blue.withAlpha(30),
                      onTap: () {
                        getIt.get<AppRouter>().pushNamed('/my_vehicle');
                      },
                      child: const SizedBox(
                        width: 150,
                        height: 150,
                        child: Center(child: Text('My Vehicles')),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          label: const Text('New Ride'),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          icon: const Icon(Icons.add),
          onPressed: () {
            getIt.get<MyVehicleBloc>().state.maybeWhen(
              orElse: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Please add a vehicle')),
                );
              },
              idle: (vehicles) {
                getIt.get<GasPriceBloc>().state.maybeWhen(
                  orElse: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Please add a gas price')),
                    );
                  },
                  idle: (prices) {
                    getIt.get<AppRouter>().pushNamed('/before_ride');
                  },
                );
              },
            );
          },
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: () {
                  getIt.get<AppRouter>().pushNamed('/settings');
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => const SettingsScreen(),
                  //   ),
                  // );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
