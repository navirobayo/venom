import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:venom/src/features/ride/domain/failures/ride_failure.dart';
import 'package:venom/src/injectable/injectable.dart';
import 'package:venom/src/presentation/ride/bloc/final_data/final_data_bloc.dart';
import 'package:venom/src/presentation/ride/bloc/km_in_bike/km_in_bike_bloc.dart';
import 'package:venom/src/presentation/ride/bloc/new_ride/new_ride_bloc.dart';
import 'package:venom/src/presentation/ride/bloc/ride_result/ride_result_bloc.dart';

part 'before_ride_state.dart';
part 'before_ride_event.dart';
part 'before_ride_bloc.freezed.dart';

@lazySingleton
class BeforeRideBloc extends Bloc<BeforeRideEvent, BeforeRideState> {
  BeforeRideBloc() : super(BeforeRideState.idle(DateTime(1))) {
    on<_ChangeTime>(_onChangeTime);
    on<_AcceptTime>(_onAcceptTime);
    getIt
      ..resetLazySingleton<NewRideBloc>()
      ..resetLazySingleton<KmInBikeBloc>()
      ..resetLazySingleton<FinalDataBloc>()
      ..resetLazySingleton<RideResultBloc>();
  }

  FutureOr<void> _onChangeTime(
    _ChangeTime event,
    Emitter<BeforeRideState> emit,
  ) {
    if (event.timeSelected == null) {
      emit(
        const BeforeRideState.failure('null value', RideFailure.nullParam()),
      );
    } else {
      emit(BeforeRideState.idle(event.timeSelected!));
    }
  }

  FutureOr<void> _onAcceptTime(
    _AcceptTime event,
    Emitter<BeforeRideState> emit,
  ) {
    if (event.timeSelected == null) {
      emit(
        const BeforeRideState.failure('null value', RideFailure.nullParam()),
      );
    } else {
      final hour = event.timeSelected!.hour * 3600;
      final minute = event.timeSelected!.minute * 60;
      final seconds = event.timeSelected!.second;
      final totalSeconds = hour + minute + seconds;
      if (getIt.isRegistered<int>()) {
        getIt
          ..unregister<int>()
          ..registerSingleton<int>(totalSeconds);
      } else {
        getIt.registerSingleton<int>(totalSeconds);
      }
    }
  }
}
