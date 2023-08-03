import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:venom/src/features/price/domain/models/price_model.dart';
import 'package:venom/src/injectable/injectable.dart';
import 'package:venom/src/presentation/gas_price/bloc/gas_price/gas_price_bloc.dart';
import 'package:venom/src/presentation/settings/bloc/default_price/default_price_bloc.dart';

@RoutePage(name: 'DefaultPriceSelector')
class DefaultPriceSelectorPage extends StatelessWidget {
  const DefaultPriceSelectorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DefaultPriceBloc, DefaultPriceState>(
      bloc: getIt.get<DefaultPriceBloc>(),
      builder: (context, state) {
        final Price defaultPrice = state.price ??
            (getIt.get<GasPriceBloc>().state.maybeWhen(
              orElse: () {
                return Price();
              },
              idle: (prices) {
                if (prices.isEmpty) {
                  return Price(
                      id: '0', isDefault: false, placeOfPurchase: '', price: 0);
                } else {
                  return prices.last;
                }
              },
            ));
        return Scaffold(
          appBar: AppBar(
            title: const Text("Default Price"),
          ),
          body: ListView(
            children: [
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  const Spacer(),
                  const Text("\$", style: TextStyle(fontSize: 48.0)),
                  Text(
                    (defaultPrice.price).toString().padLeft(2, '0'),
                    style: const TextStyle(fontSize: 48.0),
                  ),
                  const Spacer(),
                  Text(
                    (defaultPrice.placeOfPurchase),
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
                  getIt.get<GasPriceBloc>().state.maybeWhen(orElse: () {
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
                        });
                  }, idle: (prices) async {
                    if (prices.isEmpty) {
                      return showDialog(
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
                          });
                    }
                    final selectedPrice = await showDialog<Price>(
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
                      getIt.get<DefaultPriceBloc>().add(
                          DefaultPriceEvent.setDefaultPrice(selectedPrice));
                    }
                  });
                },
                child: const Text('Select price'),
              ),
            ],
          ),
        );
      },
    );
  }
}
