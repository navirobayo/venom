import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:venom/src/features/core/models/tuple.dart' as tuple;
import 'package:venom/src/features/theme/domain/models/venom_theme_data.dart';
import 'package:venom/src/features/theme/domain/use_cases/change_theme_use_case.dart';
import 'package:venom/src/features/theme/domain/use_cases/get_theme_use_case.dart';

part 'set_theme_state.dart';
part 'set_theme_event.dart';
part 'set_theme_bloc.freezed.dart';

@lazySingleton
class SetThemeBloc extends Bloc<SetThemeEvent, SetThemeState> {
  SetThemeBloc(this._getThemeUseCase, this._changeThemeUseCase)
      : super(
          const SetThemeState.idle(
            themeColor: Color(0x851c3729),
            themeMode: ThemeMode.system,
          ),
        ) {
    on<_SetTheme>(_onSetTheme);
    on<_ChangeThemeColor>(_onChangeThemeColor);
    on<_GetCachedTheme>(_onGetCachedTheme);
    add(SetThemeEvent.getCachedTheme());
  }
  final GetThemeUseCase _getThemeUseCase;
  final ChangeThemeUseCase _changeThemeUseCase;

  FutureOr<void> _onSetTheme(
    _SetTheme event,
    Emitter<SetThemeState> emit,
  ) async {
    await _changeThemeUseCase
        .call(
          param: tuple.Tuple1(
            VenomThemeData(
              colorTheme: state.themeColor!.value,
              themeMode: event.themeMode!.index,
            ),
          ),
        )
        .then(
          (value) => value.fold(
            (l) => null,
            (r) => emit(state.copyWith(themeMode: event.themeMode)),
          ),
        );
  }

  FutureOr<void> _onChangeThemeColor(
    _ChangeThemeColor event,
    Emitter<SetThemeState> emit,
  ) async {
    await _changeThemeUseCase
        .call(
          param: tuple.Tuple1(
            VenomThemeData(
              colorTheme: event.themeColor!.value,
              themeMode: state.themeMode!.index,
            ),
          ),
        )
        .then(
          (value) => value.fold(
            (l) => null,
            (r) => emit(state.copyWith(themeColor: event.themeColor)),
          ),
        );
  }

  FutureOr<void> _onGetCachedTheme(
    _GetCachedTheme event,
    Emitter<SetThemeState> emit,
  ) async {
    try {
      await _getThemeUseCase.call(param: tuple.Tuple0()).then(
            (value) => value.fold(
              (l) => emit(
                const SetThemeState.idle(
                  themeColor: Colors.black,
                  themeMode: ThemeMode.dark,
                ),
              ),
              (r) {
                final themeMode = ThemeMode.values[r.themeMode];
                emit(
                  SetThemeState.idle(
                    themeColor: Color(r.colorTheme),
                    themeMode: themeMode,
                  ),
                );
              },
            ),
          );
    } catch (e) {
      emit(
        const SetThemeState.idle(
          themeColor: Colors.black,
          themeMode: ThemeMode.dark,
        ),
      );
    }
  }
}
