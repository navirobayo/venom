import 'package:flutter/material.dart';
import 'package:venom/presentation/gas_history/gas_history.dart';
import 'package:venom/presentation/new_ride/before_ride.dart';
import 'package:venom/presentation/settings_screen/settings_screen.dart';
import 'package:venom/presentation/tool_kit/tool_kit.dart';
import '../new_ride/new_ride.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({Key? key, required this.userName}) : super(key: key);
  final String userName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              const Card(
                child: SizedBox(
                  width: 150,
                  height: 150,
                  child: Center(child: Text("Rides")),
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ToolKit(),
                      ),
                    );
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const GasHistory(),
                      ),
                    );
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BeforeRide(),
                      ),
                    );
                  },
                  child: const SizedBox(
                    width: 150,
                    height: 150,
                    child: Center(child: Text("?")),
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
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const NewRide(),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(children: <Widget>[
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SettingsScreen(),
                ),
              );
            },
          )
        ]),
      ),
    );
  }
}
