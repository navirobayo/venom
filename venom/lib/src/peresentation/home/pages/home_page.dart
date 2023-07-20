import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:venom/src/config/routes/router.dart';
import 'package:venom/src/injectable/injectable.dart';
import 'package:venom/src/peresentation/ride/pages/bloc/rides/rides_bloc.dart';

@RoutePage(name: 'home')
class HomePage extends StatelessWidget {
  HomePage({super.key});

  final String userName = getIt.get<String>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt.get<RidesBloc>(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Ver. 1.0"),
          automaticallyImplyLeading: false,
        ),
        body: Center(
          child: ListView(children: [
            const SizedBox(
              height: 50,
            ),
            Center(child: Text("Welcome, $userName")),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  clipBehavior: Clip.hardEdge,
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      getIt.get<AppRouter>().pushNamed('/rides');
                    },
                    child: const SizedBox(
                      width: 150,
                      height: 150,
                      child: Center(child: Text("Rides")),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 50,
                ),
                Card(
                  clipBehavior: Clip.hardEdge,
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const ToolKit(),
                      //   ),
                      // );
                    },
                    child: const SizedBox(
                      width: 150,
                      height: 150,
                      child: Center(child: Text("Toolkit")),
                    ),
                  ),
                )
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
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const GasHistory(),
                      //   ),
                      // );
                    },
                    child: const SizedBox(
                      width: 150,
                      height: 150,
                      child: Center(child: Text("Gas Prices")),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 50,
                ),
                Card(
                  clipBehavior: Clip.hardEdge,
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const MyVehicles(),
                      //   ),
                      // );
                    },
                    child: const SizedBox(
                      width: 150,
                      height: 150,
                      child: Center(child: Text("My Vehicles")),
                    ),
                  ),
                )
              ],
            ),
          ]),
        ),
        floatingActionButton: FloatingActionButton.extended(
          label: const Text("New Ride"),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
          icon: const Icon(Icons.add),
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => BeforeRide(
            //       userName: userName,
            //     ),
            //   ),
            // );
          },
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(children: <Widget>[
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const SettingsScreen(),
                //   ),
                // );
              },
            )
          ]),
        ),
      ),
    );
  }
}
