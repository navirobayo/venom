import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:venom/src/features/ride/domain/failures/ride_failure.dart';

part 'final_data_state.dart';
part 'final_data_event.dart';
part 'final_data_bloc.freezed.dart';

@lazySingleton
class FinalDataBloc extends Bloc<FinalDataEvent, FinalDataState> {
  FinalDataBloc() : super(const FinalDataState.idle(0.5)) {
    on<_ChangeGasLevel>(_onChangeGasLevel);
  }

  FutureOr<void> _onChangeGasLevel(
      _ChangeGasLevel event, Emitter<FinalDataState> emit,) {
    if (event.value == null) {
      emit(const FinalDataState.failure('null param', RideFailure.nullParam()));
    } else {
      emit(FinalDataState.idle(event.value!));
    }
  }
}
