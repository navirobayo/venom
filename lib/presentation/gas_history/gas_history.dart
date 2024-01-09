import 'package:flutter/material.dart';
import 'package:venom/components/default_price_database.dart';
import 'package:venom/components/fuel_prices_database.dart';
import 'package:venom/components/price_object.dart';

class GasHistory extends StatefulWidget {
  const GasHistory({Key? key}) : super(key: key);

  @override
  State<GasHistory> createState() => _GasHistoryState();
}

class _GasHistoryState extends State<GasHistory> {
  late Future<List<FuelPrice>> _pricesFuture;

  @override
  void initState() {
    super.initState();
    _pricesFuture = _getPrices();
  }

  Future<List<FuelPrice>> _getPrices() async {
    final database = PricesDatabase();
    return database.fuelPrices();
  }

  Future<void> _addPrice(String fuelPrice, String placeOfPurchase) async {
    final price = FuelPrice(
      price: double.parse(fuelPrice),
      placeOfPurchase: placeOfPurchase,
    );
    final database = PricesDatabase();
    await database.insertFuelPrice(price);
    final prices = await database.fuelPrices();
    setState(() {
      _pricesFuture = Future.value(prices);
    });

    final defaultPrice = DefaultPriceObject(
      fuelPrice: price.price.toString(),
      placeOfPurchase: price.placeOfPurchase,
    );
    final defaultPriceDatabase = DefaultPriceDatabase.instance;
    await defaultPriceDatabase.insertDefaultPrice(defaultPrice);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gas Prices Historical Tracker"),
      ),
      body: FutureBuilder<List<FuelPrice>>(
        future: _pricesFuture,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final prices = snapshot.data!;
            return ListView.builder(
              itemCount: prices.length,
              itemBuilder: (BuildContext context, int index) {
                final price = prices[index];
                return Dismissible(
                  key: Key(price.id.toString()),
                  onDismissed: (direction) async {
                    await PricesDatabase().deleteFuelPrice(price.id!);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Fuel price deleted"),
                        action: SnackBarAction(
                          label: "Undo",
                          onPressed: () async {
                            final database = PricesDatabase();
                            await database.insertFuelPrice(price);
                            final prices = await database.fuelPrices();
                            setState(() {
                              _pricesFuture = Future.value(prices);
                            });
                          },
                        ),
                      ),
                    );
                  },
                  background: Container(
                    color: Colors.red,
                    child: const ListTile(
                      leading: Icon(Icons.delete, color: Colors.white),
                    ),
                  ),
                  child: ListTile(
                    leading: const Icon(Icons.gas_meter_outlined, size: 40),
                    title: Text("${price.price.toString()} \$"),
                    subtitle: Text(price.placeOfPurchase),
                    onLongPress: () async {
                      final result = await showMenu(
                        context: context,
                        position: const RelativeRect.fromLTRB(2, 0, 0, 0),
                        items: [
                          const PopupMenuItem(
                            value: "delete",
                            child: Row(
                              children: [
                                Icon(Icons.delete),
                                SizedBox(width: 8),
                                Text("Delete")
                              ],
                            ),
                          )
                        ],
                      );
                      if (result == "delete") {
                        final database = PricesDatabase();
                        await database.deleteFuelPrice(price.id!);
                        final prices = await database.fuelPrices();
                        setState(() {
                          _pricesFuture = Future.value(prices);
                        });
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("$price deleted"),
                            action: SnackBarAction(
                              label: "Undo",
                              onPressed: () async {
                                await database.insertFuelPrice(price);
                                final prices = await database.fuelPrices();
                                setState(() {
                                  _pricesFuture = Future.value(prices);
                                });
                              },
                            ),
                          ),
                        );
                      }
                    },
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await showDialog<FuelPrice>(
            context: context,
            builder: (BuildContext context) {
              String fuelPrice = "";
              String placeOfPurchase = "";
              return AlertDialog(
                title: const Text("Add Price"),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      decoration: const InputDecoration(labelText: "Price"),
                      keyboardType: TextInputType.number,
                      onChanged: (value) => fuelPrice = value,
                    ),
                    TextField(
                      decoration:
                          const InputDecoration(labelText: "Place of purchase"),
                      onChanged: (value) => placeOfPurchase = value,
                    ),
                  ],
                ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text("Cancel"),
                  ),
                  TextButton(
                    onPressed: () async {
                      await _addPrice(fuelPrice, placeOfPurchase);
                      Navigator.pop(context);
                    },
                    child: const Text("Add"),
                  ),
                ],
              );
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
