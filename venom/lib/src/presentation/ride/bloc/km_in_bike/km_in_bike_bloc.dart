import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:venom/src/features/ride/domain/failures/ride_failure.dart';

part 'km_in_bike_state.dart';
part 'km_in_bike_event.dart';
part 'km_in_bike_bloc.freezed.dart';

@lazySingleton
class KmInBikeBloc extends Bloc<KmInBikeEvent, KmInBikeState> {
  KmInBikeBloc() : super(const KmInBikeState.idle(0.5)) {
    on<_ChangeGasLevel>(_onChangeGasLevel);
  }

  FutureOr<void> _onChangeGasLevel(
      _ChangeGasLevel event, Emitter<KmInBikeState> emit) {
    if (event.value == null) {
      emit(KmInBikeState.failure('null param', RideFailure.nullParam()));
    } else {
      emit(KmInBikeState.idle(event.value!));
    }
  }
}
