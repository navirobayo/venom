import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';
import 'package:venom/src/features/core/models/tuple.dart' as tuple;
import 'package:venom/src/features/price/domain/failures/price_failure.dart';
import 'package:venom/src/features/price/domain/models/price_model.dart';
import 'package:venom/src/features/price/domain/use_cases/cache_prices_data_use_case.dart';
import 'package:venom/src/features/price/domain/use_cases/get_cached_prices_data_use_case.dart';
import 'package:venom/src/injectable/injectable.dart';
import 'package:venom/src/presentation/settings/bloc/default_price/default_price_bloc.dart';

part 'gas_price_state.dart';
part 'gas_price_event.dart';
part 'gas_price_bloc.freezed.dart';

@lazySingleton
class GasPriceBloc extends Bloc<GasPriceEvent, GasPriceState> {
  GasPriceBloc(this._getcachedPriceDataUseCase, this._cachePriceDataUseCase)
      : super(const GasPriceState.idle([])) {
    on<_CachePrice>(_onCachePrice);
    on<_DeletePrice>(_onDeletePrice);
    on<_UpdatePrice>(_onUpdatePrice);
    on<_GetCachedPrices>(_onGetCachePrices);
    add(_GetCachedPrices());
  }
  final GetCachedPriceDataUseCase _getcachedPriceDataUseCase;
  final CachePriceDataUseCase _cachePriceDataUseCase;

  FutureOr<void> _onCachePrice(
    _CachePrice event,
    Emitter<GasPriceState> emit,
  ) async {
    var prices = <Price>[];
    if (getIt.isRegistered<List<Price>>()) {
      prices = getIt.get<List<Price>>().toList();
    }
    prices.add(event.price.copyWith(id: getIt.get<Uuid>().v8()));
    await _cachePriceDataUseCase.call(param: tuple.Tuple1(prices)).then(
          (value) => value.fold(
            (l) => emit(GasPriceState.failure('database Error', l)),
            (r) {
              if (getIt.isRegistered<List<Price>>()) {
                getIt
                  ..unregister<List<Price>>()
                  ..registerSingleton<List<Price>>(prices);
              } else {
                getIt.registerSingleton<List<Price>>(prices);
              }

              if (prices.length == 1) {
                getIt.get<DefaultPriceBloc>().add(
                      DefaultPriceEvent.setDefaultPrice(prices.first),
                    );
              }
              emit(GasPriceState.idle(prices));
            },
          ),
        );
  }

  FutureOr<void> _onGetCachePrices(
    _GetCachedPrices event,
    Emitter<GasPriceState> emit,
  ) async {
    await _getcachedPriceDataUseCase.call().then(
          (value) => value.fold(
            (l) {
              emit(GasPriceState.failure('null', l));
            },
            (r) {
              if (getIt.isRegistered<List<Price>>()) {
                getIt
                  ..unregister<List<Price>>()
                  ..registerSingleton<List<Price>>(r);
              } else {
                getIt.registerSingleton<List<Price>>(r);
              }
              // Get Default Price From Hive Database
              getIt
                  .get<DefaultPriceBloc>()
                  .add(DefaultPriceEvent.readDefaultPrice());

              emit(GasPriceState.idle(r));
            },
          ),
        );
  }

  FutureOr<void> _onDeletePrice(
    _DeletePrice event,
    Emitter<GasPriceState> emit,
  ) async {
    var prices = <Price>[];
    if (getIt.isRegistered<List<Price>>()) {
      prices = getIt.get<List<Price>>().toList();
    }
    if (prices.isNotEmpty) {
      prices.removeAt(event.index);
    }
    await _cachePriceDataUseCase.call(param: tuple.Tuple1(prices)).then(
          (value) => value.fold(
            (l) => emit(GasPriceState.failure('database Error', l)),
            (r) {
              if (getIt.isRegistered<List<Price>>()) {
                getIt
                  ..unregister<List<Price>>()
                  ..registerSingleton<List<Price>>(prices);
              } else {
                getIt.registerSingleton<List<Price>>(prices);
              }
              emit(GasPriceState.idle(prices));
            },
          ),
        );
  }

  FutureOr<void> _onUpdatePrice(
    _UpdatePrice event,
    Emitter<GasPriceState> emit,
  ) async {
    await state.maybeWhen(
      orElse: () {},
      idle: (prices) async {
        final pricesList = prices.toList();
        for (var i = 0; i < prices.length; i++) {
          pricesList[i] = prices[i].copyWith(isDefault: false);
        }
        final priceIndex = prices.indexWhere(
          (e) =>
              e.placeOfPurchase == event.price.placeOfPurchase &&
              e.price == event.price.price,
        );
        var price = Price();
        price = pricesList[priceIndex].copyWith(isDefault: true);
        pricesList[priceIndex] = price;
        await _cachePriceDataUseCase.call(param: tuple.Tuple1(pricesList)).then(
              (value) => value.fold(
                (l) => emit(GasPriceState.failure('database Error', l)),
                (r) {
                  if (getIt.isRegistered<List<Price>>()) {
                    getIt
                      ..unregister<List<Price>>()
                      ..registerSingleton<List<Price>>(pricesList);
                  } else {
                    getIt.registerSingleton<List<Price>>(pricesList);
                  }
                  emit(GasPriceState.idle(pricesList));
                },
              ),
            );
      },
    );
  }
}
