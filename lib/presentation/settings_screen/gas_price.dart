import 'package:flutter/material.dart';
import 'package:venom/components/default_price_database.dart';
import 'package:venom/components/fuel_prices_database.dart';
import 'package:venom/components/price_object.dart';

class DefaultPriceSelector extends StatefulWidget {
  const DefaultPriceSelector({Key? key}) : super(key: key);

  @override
  _DefaultPriceSelectorState createState() => _DefaultPriceSelectorState();
}

class _DefaultPriceSelectorState extends State<DefaultPriceSelector> {
  late Future<FuelPrice> _defaultPriceFuture;

  @override
  void initState() {
    super.initState();
    _defaultPriceFuture = _getDefaultPrice();
  }

  Future<FuelPrice> _getDefaultPrice() async {
    final defaultPriceDatabase = DefaultPriceDatabase.instance;
    final defaultPrice = await defaultPriceDatabase.defaultPrice();
    final fuelPrice = FuelPrice(
      price: double.parse(defaultPrice.fuelPrice),
      placeOfPurchase: defaultPrice.placeOfPurchase,
    );
    return fuelPrice;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Default Price"),
      ),
      body: FutureBuilder<FuelPrice>(
        future: _defaultPriceFuture,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final defaultPrice = snapshot.data!;
            return ListView(
              children: [
                const SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    const Spacer(),
                    const Text("\$", style: TextStyle(fontSize: 48.0)),
                    Text(
                      defaultPrice.price.toString(),
                      style: const TextStyle(fontSize: 48.0),
                    ),
                    const Spacer(),
                    Text(
                      defaultPrice.placeOfPurchase,
                    ),
                    const Spacer(),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Theme.of(context).focusColor),
                  ),
                  onPressed: () async {
                    final database = PricesDatabase();
                    final prices = await database.fuelPrices();
                    if (prices.isEmpty) {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text('No current prices'),
                            content: const Text(
                                'Please add them in "Gas prices" screen'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('OK'),
                              ),
                            ],
                          );
                        },
                      );
                    } else {
                      final selectedPrice = await showDialog<FuelPrice>(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text('Select a price'),
                            content: SizedBox(
                              width: double.maxFinite,
                              child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: prices.length,
                                itemBuilder: (context, index) {
                                  final price = prices[index];
                                  return ListTile(
                                    title: Text(price.placeOfPurchase),
                                    subtitle: Text(price.price.toString()),
                                    onTap: () {
                                      Navigator.pop(context, price);
                                    },
                                  );
                                },
                              ),
                            ),
                          );
                        },
                      );
                      if (selectedPrice != null) {
                        // Insert the selected price as the new default price
                        final defaultPrice = DefaultPriceObject(
                          fuelPrice: (selectedPrice.price).toStringAsFixed(2),
                          placeOfPurchase: selectedPrice.placeOfPurchase,
                        );
                        final defaultPriceDatabase =
                            DefaultPriceDatabase.instance;
                        await defaultPriceDatabase
                            .insertDefaultPrice(defaultPrice);

                        setState(() {
                          _defaultPriceFuture = Future.value(selectedPrice);
                        });
                      }
                    }
                  },
                  child: const Text('Select price'),
                ),
              ],
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error loading default price: ${snapshot.error}'),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
