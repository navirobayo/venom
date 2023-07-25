import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
// import 'package:venom/src/features/core/models/tuple.dart' as tuple;
import 'package:venom/src/features/price/domain/models/price_model.dart';
import 'package:venom/src/injectable/injectable.dart';
import 'package:venom/src/presentation/gas_price/bloc/gas_price/gas_price_bloc.dart';

part 'default_price_state.dart';
part 'default_price_event.dart';
part 'default_price_bloc.freezed.dart';

@lazySingleton
class DefaultPriceBloc extends Bloc<DefaultPriceEvent, DefaultPriceState> {
  DefaultPriceBloc() : super(DefaultPriceState.idle()) {
    on<_ReadDefaultPrice>(_onReadDefaultPrice);
    on<_SetDefaultPrice>(_onSetDefaultPrice);
  }

  FutureOr<void> _onReadDefaultPrice(
      _ReadDefaultPrice event, Emitter<DefaultPriceState> emit) async {
    try {
      getIt.get<GasPriceBloc>().state.maybeWhen(
            orElse: () {},
            idle: (prices) {
              try {
                if (prices.isNotEmpty) {
                  emit(
                    DefaultPriceState.idle(
                        price: prices.firstWhere(
                            (element) => element.isDefault == true)),
                  );
                }
              } catch (e) {
                emit(DefaultPriceState.idle(price: prices.last));
              }
            },
          );
    } catch (_) {}
  }

  FutureOr<void> _onSetDefaultPrice(
      _SetDefaultPrice event, Emitter<DefaultPriceState> emit) async {
    try {
      Price price = event.price!.copyWith(isDefault: true);
      getIt.get<GasPriceBloc>().add(GasPriceEvent.updatePrice(price));
      await Future.delayed(Duration(milliseconds: 250));
      add(DefaultPriceEvent.readDefaultPrice());
    } catch (_) {}
  }
}
