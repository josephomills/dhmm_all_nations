import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'settings_event.dart';
part 'settings_state.dart';
part 'settings_bloc.freezed.dart';

@singleton
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc() : super(SettingsState.initial()) {
    on<SettingsEvent>((event, emit) async {
      await event.map<FutureOr<void>>(
        started: (e) {
          // pick settings from disk
        },
        themeModeToggled: (e) {
          // change state variable
          // change variable on disk
          emit(state.copyWith(themeMode: e.themeMode));
        },
      );
    });
  }
}
