import 'package:flutter/material.dart';
import 'package:venom/components/database_helper.dart';

class GasHistory extends StatefulWidget {
  const GasHistory({super.key});

  @override
  State<GasHistory> createState() => _GasHistoryState();
}

class _GasHistoryState extends State<GasHistory> {
  List<Map<String, dynamic>> _fuelPrices = [];

  @override
  void initState() {
    super.initState();
    _loadFuelPrices();
  }

  Future<void> _loadFuelPrices() async {
    final fuelPrices = await DatabaseHelper.instance.getFuelPrices();
    setState(() {
      _fuelPrices = fuelPrices;
    });
  }

  Future<void> _deleteAllFuelPrices() async {
    await DatabaseHelper.instance.deleteAllFuelPrices();
    setState(() {
      _fuelPrices = [];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gas Prices Historical Tracker"),
      ),
      body: ListView.builder(
        itemCount: _fuelPrices.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_fuelPrices[index]['price'].toString()),
            // subtitle: Text(_fuelPrices[index]['date']),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _deleteAllFuelPrices,
        tooltip: 'Delete all fuel prices',
        child: const Icon(Icons.delete),
      ),
    );
  }
}
