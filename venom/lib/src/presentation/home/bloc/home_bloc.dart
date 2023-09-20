import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:venom/src/config/routes/router.dart';
import 'package:venom/src/config/utils/function_helper.dart';
import 'package:venom/src/features/home/domain/failures/home_failure.dart';
import 'package:venom/src/injectable/injectable.dart';
import 'package:venom/src/presentation/gas_price/bloc/gas_price/gas_price_bloc.dart';
import 'package:venom/src/presentation/vehicle/bloc/my_vehicle/my_vehicle_bloc.dart';

part 'home_state.dart';
part 'home_event.dart';
part 'home_bloc.freezed.dart';

@lazySingleton
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const _Idle()) {
    // Get Price and Vehicle List From Hive Database and inject it in getIt
    getIt.get<GasPriceBloc>().add(GasPriceEvent.getCachedPrices());
    getIt.get<MyVehicleBloc>().add(MyVehicleEvent.getCachedVehicles());
  }
  final AppRouter appRoute = getIt.get<AppRouter>();

  @override
  void onEvent(HomeEvent event) {
    FunctionHelper().logMessage('>>>>> Auth Bloc event: $event');
    super.onEvent(event);
  }
}
