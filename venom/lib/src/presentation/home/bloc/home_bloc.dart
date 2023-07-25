import 'dart:async';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:venom/src/config/routes/router.dart';
import 'package:venom/src/config/utils/function_helper.dart';
// import 'package:venom/src/features/core/models/tuple.dart' as tuple;
import 'package:venom/src/injectable/injectable.dart';
import 'package:venom/src/presentation/gas_price/bloc/gas_price/gas_price_bloc.dart';
import 'package:venom/src/presentation/vehicle/bloc/my_vehicle/my_vehicle_bloc.dart';

import '../../../features/home/domain/failures/home_failure.dart';

part 'home_state.dart';
part 'home_event.dart';
part 'home_bloc.freezed.dart';

@lazySingleton
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final AppRouter appRoute = getIt.get<AppRouter>();
  HomeBloc() : super(const _Idle()) {
    on<_CheckDataIsAvailable>(_onCheckDataIsAvailable);
    getIt.get<GasPriceBloc>().add(GasPriceEvent.getCachedPrices());
    getIt.get<MyVehicleBloc>().add(MyVehicleEvent.getCachedVehicles());
    add(_CheckDataIsAvailable());
  }

  @override
  void onEvent(HomeEvent event) {
    FunctionHelper().logMessage('>>>>> Auth Bloc event: ${event.toString()}');
    super.onEvent(event);
  }

  //
  FutureOr<void> _onCheckDataIsAvailable(
    _CheckDataIsAvailable event,
    Emitter<HomeState> emit,
  ) async {
    try {
      // final getCachedSurahsResult = await ;
      // getCachedSurahsResult.fold(
      //   (l) async {
      //     emit(_Failure(failure: l));
      //   },
      //   (r) {
      //     if ((r.listSurahs ?? []).isEmpty) {
      //       emit(_Failure());
      //     } else {
      //       emit(_DataIsAvailableInStorage(listSurahs: r));
      //     }
      //   },
      // );
    } catch (e) {
      emit(_Failure(message: e.toString()));
    }
  }
}
