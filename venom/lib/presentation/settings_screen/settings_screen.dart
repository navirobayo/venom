import 'package:flutter/material.dart';
import 'package:venom/presentation/settings_screen/gas_capacity.dart';
import 'package:venom/presentation/settings_screen/gas_price.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.monetization_on_outlined),
            title: const Text("Current Gas price"),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DefaultPriceSelector(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.gas_meter_outlined),
            title: const Text("Current Gas capacity"),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const GasCapacity(),
                ),
              );
            },
          ),
          const ListTile(
            leading: Icon(Icons.palette_outlined),
            title: Text("Theme"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          const ListTile(
            leading: Icon(Icons.info_outline_rounded),
            title: Text("About"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    );
  }
}
